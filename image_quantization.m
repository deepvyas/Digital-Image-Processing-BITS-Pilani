file = input('Enter Filename of Image to threshold'); %{takes file name as inut%}
levels = input('Enter quantization levels as vector');
image = imread(file); %Reads Image as array
d = imquantize(image,levels);
image
                
                    
    