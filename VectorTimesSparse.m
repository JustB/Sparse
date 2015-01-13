function output_vector = VectorTimesSparse( V,S )
%S is a Matrix represented in sparse form.  A Matrix in sparse form is
%defined as an Nx3 matrix where each row represents a single value contained
%in the non sparse form.  Each row has the format [i,j,V] where i is the row,
%j is column, and V is the value at i,j.
%
%V is a row vector

p = inputParser;
addRequired(p,'V',@isvector);
addRequired(p,'S',@ismatrix);

%the number of rows in the output vector should be the the number of rows
%in the matrix representation of S.  This is the same as the largest number
%in column 1 of S.
outputVectorSize = max(S(:,1));
output_vector = zeros(1,max([outputVectorSize,size(V)]));

numRowsOfS = size(S,1);
for i = 1:numRowsOfS
    inputMatrixRow = S(i,1);
    inputMatrixColumn = S(i,2);
    inputMatrixValue = S(i,3);
    output_vector(inputMatrixRow) = output_vector(inputMatrixRow)+inputMatrixValue*V(inputMatrixColumn);
end

end

