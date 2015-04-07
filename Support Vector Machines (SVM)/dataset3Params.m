function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

%bestErr = zeros(3,1);
%1x8column vector
increments = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

%search for each column value (8 values)
for i=1:size(increments,2)
    for j=1:size(increments,2)
        newC = increments(i);
        newSigma = increments(j);
        model = svmTrain(X,y,newC,@(x1,x2) gaussianKernel(x1,x2,newSigma));
        predictions = svmPredict(model,Xval);
        %error is 8x8 matrix jer ima 64 kombinacije i and j
        error(i,j) = mean(double(predictions ~= yval));
    end
end

minErr = min(min(error));
[i j] = find(error == minErr);

C = increments(i);
sigma = increments(j);

fprintf('\n Best found C and sigma are: C = %f, sigma = %f\n', C, sigma);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
