classdef TEST_ScalarTimesSparse < matlab.unittest.TestCase
    %Tests the function ScalarTimesSparse( scalar , sparseMatrix ) 
    
    properties
    end
    
    methods (Test)
        function multiplyByZero(testCase)
            scalar = 0;
            sparseMatrix = [1 1 1; 1 2 2; 2 3 3];
            actualSolution = ScalarTimesSparse(scalar,sparseMatrix);
            expectedSolution = 0;
            testCase.verifyEqual(actualSolution,expectedSolution);
        end
        
        function multiply(testCase)
            scalar = 3;
            sparseMatrix = [1 1 1; 1 2 2; 2 3 3];
            actualSolution = ScalarTimesSparse(scalar,sparseMatrix);
            expectedSolution = [1 1 3; 1 2 6; 2 3 9];
            testCase.verifyEqual(actualSolution,expectedSolution);
        end
        
    end
    
end

