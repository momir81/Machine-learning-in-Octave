function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.
%pos and neg are vestors that contains index positions where y is 1 and 0
pos=find(y==1);
neg=find(y==0);
%X(pos,1) je vectors that contains values of first row of matrix X(dimension is 100X2 ) where corresponding index positions of y is 1
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7,X(neg,1),X(neg,2),'og','MarkerSize',7 );
%plot(X(neg,1),X(neg,2),'ko','LineWidth',2,'MarkerSize',7);


% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%









% =========================================================================



hold off;

end
