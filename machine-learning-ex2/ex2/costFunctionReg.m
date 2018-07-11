function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

predictionZ  = sigmoid(X*theta);
exceptTheta0 = theta(2:size(theta));
exceptTheta0SquaredSum = sum(exceptTheta0.^2);
J = (-y'*log(predictionZ) - (1-y)'*log(1-predictionZ))./m + lambda*exceptTheta0SquaredSum./(2*m);

theta0is0    = theta;
theta0is0(1) = 0;
grad = (X' * (predictionZ - y))./m + lambda*theta0is0./m;


% =============================================================

end
