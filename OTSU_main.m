%% OTSU
[file_name, pathname] = uigetfile( '*.*','choose an image');
I = imread([pathname,'/',file_name]); 

level = graythresh(I);
BW = im2bw(I,level);
imshow(BW)

%% multi-OTSU for a plie of images
clc;
clear;
pathname=uigetdir('*.*','select a dir');
imgdir=dir([pathname,'/*.jpg']);
for i=1:length(imgdir)
    img=imread([pathname,'/',imgdir(i).name]);
level = graythresh(img);
h=figure(i);
BW = im2bw(img,level);
imshow(BW)
saveas(h,[pathname,'/OTSU/',imgdir(i).name])     %save
   close(i)            %close figure

end
