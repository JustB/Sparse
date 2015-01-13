classdef TEST_SparseTimesVector < matlab.unittest.TestCase
    %Tests the function SparseTimesVector( S,V )
    
    properties
    end
    
    methods (Test)
        function testCase_01(testCase)
            sparseMatrix = [1 1 2; 2 2 3; 3 4 5];
            vector = [2; 3; 5; 7];
            expectedSolution = [4; 9; 35; 0];
            actualSolution = SparseTimesVector(sparseMatrix,vector);
            testCase.verifyEqual(actualSolution,expectedSolution);
        end
    end
    
end

