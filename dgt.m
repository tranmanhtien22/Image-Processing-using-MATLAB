a = imread('C:\Users\ASUS\OneDrive\Documents\MATLAB\l.jpg');
subplot(2,3,1);
imshow(a);

b = rgb2gray(a);
subplot(2,3,2);
imshow(b);

c = im2bw(a);
subplot(2,3,3);
imshow(c);

d = a;
d=rgb2gray(d);
d=edge(d,'Canny');
subplot(2,3,4);
imshow(d);

f = a;
f = imcomplement(f);
subplot(2,3,5);
imshow(f);
e = a;
e=rgb2gray(e);
subplot(2,3,6);
imhist(e);

imfinfo('C:\Users\ASUS\OneDrive\Documents\MATLAB\l.jpg')

[height, width, colour_planes] = size(a)

