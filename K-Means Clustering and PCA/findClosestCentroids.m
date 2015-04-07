function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
% X is 300x2, centroids 3x2

% Set K is 3
K = size(centroids, 1);

% You need to return the following variables correctly.
%idx is 300x1 vector
idx = zeros(size(X,1), 1);
m = size(X,1);
for i=1:m
  temp = [];
   for j=1:K
       temp = [temp;X(i,:)]; 
   end
dist = sum((temp - centroids).^2,2);
%returns value val and index of this value idx
[val,idx(i)] = min(dist);
%sum(x,2) sumira po vrsti,1 po koloni
end
fprintf('Value is : %d\n', val);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

