function output_matrix = ScalarTimesSparse( scalar , sparseMatrix )
% Multiply a scalar and a Matrix in Sparse form.
% sparseMatrix is a Matrix represented in sparse form.  A Matrix in sparse form is
%defined as an Nx3 matrix where each row represents a single value contained
%in the non sparse form.  Each row has the format [i,j,k] where i is the row,
%j is column, and k is the value at i,j.
%
% scalar is any real or imaginary number.

p = inputParser;
addRequired(p,'sparseMatrix',@ismatrix);

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

