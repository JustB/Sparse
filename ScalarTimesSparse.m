function output_matrix = ScalarTimesSparse( scalar , sparseMatrix )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

p = inputParser;
addRequired(p,'M',@ismatrix);

if scalar == 0
    output_matrix = 0;
    return;
end

numRows = size(sparseMatrix,1)
output_matrix = zeros(numRows,3);
for i = 1:numRows
    output_matrix(i,1) = sparseMatrix(i,1);
    output_matrix(i,2) = sparseMatrix(i,2);
    output_matrix(i,3) = scalar*sparseMatrix(i,3);
end
end

