function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

%X is 100x3, theta is 3x1, h is 100x1 vector
h = sigmoid(X*theta);
y1=-y'*log(h);
y2=-(1-y)'*log(1-h);
 J = (y1+y2)/m;
%J = (1/m)*(-y'* log(h) - (1 - y)'* log(1-h));
% grad is vector 3x1 that contains values of theta0, theta1, theta2 for which J is minimal, J is number
grad = (1/m)*X'*(h - y);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
