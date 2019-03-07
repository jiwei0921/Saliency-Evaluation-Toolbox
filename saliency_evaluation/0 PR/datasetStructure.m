function result = datasetStructure(datasetName,GTdir)
% Function creates the struct of dataset to which evaluate on
% Input:
% datasetName - name of dataset testing on. Possible inputs:
% ASD,MSRA,SED1,SED2,SOD.
% GTdir - directory of dataset's ground-truth images
result = struct('datasetName',datasetName,'GTdir', GTdir);
end