image  = imread('Fig1.tif');
freq_table = zeros(1,256);
d =mat2gray(image);
for k = 1:256
    temp =image(image==k-1);
    freq_table(1,k) = size(temp,1);
  
end
sumt=0;
for k=1:256
    sumt = sumt+freq_table(1,k);
end

freq_table = freq_table./sumt;

cdf_table = zeros(1,256);

for k=1:1:256
    cdf_table(1,k) = sum(freq_table(1:k));
end

output = round(cdf_table.*255);
