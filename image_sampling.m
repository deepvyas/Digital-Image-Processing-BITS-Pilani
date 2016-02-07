%file = input('Enter file name to sample >> ');
sample_size = input('Enter odd sample size >> ');
image = imread('./Images/chronometer.tif'); %test image
k = (size(image))/sample_size;
j = floor(k);
d = image(1:j(1)*sample_size , 1:j(2)*sample_size);
h(1:j(1)*sample_size , 1:j(2)*sample_size) =0;

for w1 = 1:j(1)
    for w2 = 1:j(2)
        a = sample_size*w1;
        b= sample_size*w2;
        h(a-(sample_size-1):a , b-(sample_size-1):b) = d(a-(sample_size-1)/2 , b-(sample_size-1)/2);
    end
end
fig = mat2gray(h);
imwrite(fig,'./Images/chronometer-processed.tif');