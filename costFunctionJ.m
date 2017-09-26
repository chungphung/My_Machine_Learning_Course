function J = costFunctionJ(x,y,theta)

% x is the "design matrix" containing our training examples
% y is the class labels

m = size(x,1); %number of training examples
predictions = x*theta; % predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2; % squared sqrErrors

J = 1/(2*m)*sum(sqrErrors);