function Z = create_imagedatastore(labels, location)

    imds = imageDatastore(location);
    imds.Labels = labels;
    Z = imds;
end