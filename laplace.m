image = imread(input('Enter file name'));
figure(1);
imshow(image,[]);

laplacian = [0 1 0;1 -4 1;0 1 0];

filtered  = imfilter(image,laplacian);
figure(2);
imshow(filtered);
figure(3);
imshow(filtered,[]);

sharpened1 = image - filtered;
figure(4);
imshow(sharpened1,[]);

laplacian_diag = [1 1 1 ;1 -8 1;1 1 1];
filtered1 = imfilter(image,laplacian_diag);

sharpened2 = image - filtered1;

figure(5);
imshow(sharpened2,[]);



sobel_filter = [-1 0 1;-2 0 2;-1 0 1];
filtered2 = imfilter(image,sobel_filter);
figure(6);
imshow(filtered2,[]);
