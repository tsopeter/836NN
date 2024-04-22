% model

% get data
data = load_dataset();

% convert diagnosis to 1 for M and 0 for B
diagnosis = data(:,1);
flabels = categorical((cell2mat(table2array(diagnosis)) == 'M'));

ds = create_imagedatastore(flabels, "./Data");

[train, test] = splitEachLabel(ds, 0.9);

function Z = create_imagedatastore(labels, location)

    imds = imageDatastore(location);
    imds.Labels = labels;
    Z = imds;
end
