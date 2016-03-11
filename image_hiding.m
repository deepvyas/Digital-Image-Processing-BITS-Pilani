image1 = imread('./Images/moon.tif');
image2 = imread('./Images/einstein.tif');
image2 = image2(1:540,1:466); % To make image sizes same
f1 = bitget(image1,5);
f2 = bitget(image1,6);
f3 = bitget(image1,7);
f4 = bitget(image1,8);

s1 = bitget(image2,5);
s2 = bitget(image2,6);
s3 = bitget(image2,7);
s4 = bitget(image2,8);

image = s4+2*s3 +4*s2+8*s1+16*f1+32*f2+64*f3+128*f4;

imwrite(image,'./Images/raaz.tif');
