% file = input('Enter file name');
gamma = input('Enter Gamma value');
image = imread('./Images/washed_airstrip.tif');
image = mat2gray(image);
d = image.^gamma;
d = mat2gray(d);
figure(1);
imshow(d);
imwrite(d,'./Images/washed_airstrip-processed.tif');