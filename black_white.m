image  = imread('Fig0221(a)(ctskull-256).tif')
for r=1:size(image,1)
    for c = 1:size(image,2)
        if image(r,c) > 128
            image(r,c) = 255;
        else
            image(r,c) = 0;
        end
    end
end

imwrite(image,'Processed.tif')