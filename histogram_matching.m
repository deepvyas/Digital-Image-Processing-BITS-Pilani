image = imread(input('Image to process : '));
ref_image = imread(input('Reference image : '));
freq_table1 = zeros(1,256);
freq_table2 = zeros(1,256);
count1 =0;
count2=0;
for k=1:256
    temp1 = image(image==k-1);
    temp2 = ref_image(ref_image==k-1);
    freq_table1(1,k) = size(temp1,1);
    freq_table2(1,k) = size(temp2,1);
    count1 = count1+size(temp1,1);
    count2 = count2 +size(temp2,1);
end

freq_table1 = freq_table1/count1;
freq_table2 = freq_table2/count2;

cdf_image = zeros(1,256);
cdf_ref = zeros(1,256);

for k=1:256
    cdf_image(1,k) = sum(freq_table1(1:k));
    cdf_ref(1,k) = sum(freq_table2(1:k));
end

output_map = zeros(1,256);

for k=1:256
    temp = cdf_ref - cdf_image(1,k);
    [m n] = min(abs(temp));
    output_map(1,k) = n;
end
