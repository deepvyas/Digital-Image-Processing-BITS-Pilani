image = imread(input('Input image to process : '));
figure(1);
imshow(image,[]);
f1 = bitget(image,5);
f2 = bitget(image,6);
f3 = bitget(image,7);
f4 = bitget(image,8);

s1 = bitget(image,1);
s2 = bitget(image,2);
s3 = bitget(image,3);
s4 = bitget(image,4);

image1 = f1+2*f2+4*f3+8*f4;
figure(2);
imshow(image1,[]);
image2 = 8*s1+4*s2+2*s3+s4;
figure(3);
imshow(image2,[]);
