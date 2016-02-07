%file = input('Enter file name of image');
image = imread('./Images/washed_airstrip.tif');
counts =zeros(256,1);
for r=1:size(image,1)
    for c=1:size(image,2)
        a = image(r,c)+1;
        counts(a,1) = counts(a,1)+1;
    end
end
hist(counts);