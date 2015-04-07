function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% x is 97x1, y the same like x

for iter = 1:num_iters

%x = X(:,2);
%h is the like x 97x1 beaucse theta(2)* is the same like element wise
%h = theta(1)+(theta(2)*x);
%temp1 = theta(1) - 1/m*alpha*sum(h-y);
%temp2 = theta(2) - 1/m*alpha*sum((h-y).*x);
%theta=[temp1;temp2];

h = X * theta;
err = h .- y;
% err is 97x1 vector so it must be transponed to 1x97, delta is 1x3, pa mora transpond to be 3x1 beacuse theta is 3x1
delta = alpha * (1/m) * err' * X;

theta = theta - delta';


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
fprintf('Value of J(theta):');
disp(min(J_history));
plot(X(:,2),y, 'rx', 'MarkerSize', 10);
ylabel('Profit in $10,000s');
xlabel('Population of City in 10,000s');
%plotData(X(:,2),y);


end
