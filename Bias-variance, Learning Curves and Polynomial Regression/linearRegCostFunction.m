function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
% X is 12 x 2 (added ones(m,1) column), theta is 2 x 1
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
%regtheta = theta(2:end);
%herr = (X*theta) - y;
%nonreg = (1/(2*m)) * sum(herr.^2);
%reg = (lambda/(2*m))* (regtheta.^2);
%J = nonreg + reg;

%grad = (herr' * X)/m;
%grad(2:end) = grad(2:end) + (lambda * regtheta)/m;

%n in this case is the same as end
h = X * theta;
%n = size(theta);
J = 1 / (2 * m) * sum((h - y) .^ 2) + lambda / (2 * m) * sum(theta(2:end) .^ 2);

%uvde nije sum jer treba da dobijemo vector velicine theta 2x1 inace bismo dobili broj tj. sumu svih vrednosti vectora. gradient predstavlja min value of J za svako theta

grad = 1 / m * X' * (h - y)+ lambda / m * [0;theta(2:end)];

grad = grad(:);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
