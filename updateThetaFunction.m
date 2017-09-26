function Theta = updateThetaFunction(x,y,theta,alpha)

% x is the "design matrix" containing our training examples
% y is the class labels

m = size(x,1); %number of training examples
predictions = x*theta; % predictions of hypothesis on all m examples
Errors = (predictions-y); % Errors

delta = (1/m)*sum(x'*Errors);

Theta = theta - alpha*delta
