function metadata_remover(folder)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME :            metadata_remover
%
% DESCRIPTION :     batch removal of metadata from all jpg files in
%                   a folder
%
% INPUT :
%        folder     string containing the full path of the folder
%                   where the jpg files are stored
%
% OUTPUT :
%        none
%
% PROCESS :
%        [1]  Scan the folder, create a list of files
%        [2]  Read the image data from the jpg file
%        [3]  Write the image data in the same file with no metadata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
