function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positiveIndexVector = find(y==1);
negativeIndexVector = find(y==0);

plot(X(positiveIndexVector, 1), X(positiveIndexVector, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(negativeIndexVector, 1), X(negativeIndexVector, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
ylabel('exam 2 score..');
xlabel('exam 1 score..');


% =========================================================================



hold off;

end
