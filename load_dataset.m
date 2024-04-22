%
% function: load_dataset.m
%
% loads the breast cancer dataset from the wdbc.data file.
function data = load_dataset()
    filename = "./breast_cancer_dataset/wdbc.data";
    fd       = readtable(filename, FileType="text");
    
    % remove id (not needed)
    data = fd(:,2:end);
end