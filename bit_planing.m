% This script assumes image is 8-bit image
image = imread(input('Input file to process : '));
%f1 = mod(image,2);
%Or simply
f1 = bitget(image,1);
figure(1);
imshow(image,[]);
figure(2);
imshow(f1,[]);
%temp_image = image./2;
%f2 = mod(temp_image,2);
%Or simply
f2 = bitget(image,2);
%temp_image = image./4;
%f3 = mod(temp_image,2);
%I hope this clears the concept.
f3 = bitget(image,3);
f4 = bitget(image,4);
f5 = bitget(image,5);
f6 = bitget(image,6);
f7 = bitget(image,7);
f8 = bitget(image,8);
