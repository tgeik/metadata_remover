% enter the full address to the folder where jpg files are stored
% e.g. 'c:\users\'
folder = ''; 

cd(folder);
list = dir;
for i = 1:length(list)
    name = list(i,1).name
    if length(name)>4
        if name(end-2:end)=='jpg' | name(end-2:end)=='JPG'
            A = imread(name);
            imwrite(A,name);
        end;
    end;
end;