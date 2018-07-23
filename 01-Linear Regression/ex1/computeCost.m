function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


%Vectorized Cost-fuction
%J = sum((X*theta - y).^2) / (2 * m);

%Un-Vectorized cost function
for i=1:m
    J= J+(theta'*X(i,:)'-y(i)).^2;
end
J=J/(2*m);

%---------------------Complex method------------------------------

% prediction=zeros(length(X),1);
% for i=1:length(X)
%     prediction(i)=theta'*X(i,:)';
% end
% 
% %Now compute the difference with original
% val=zeros(m,1);
% for j=1:m
%     val(j)=(prediction(j)-y(j))*X(j,2);
% end
%     
% %final computation
% 
% for k=1:2
%     theta(k)=theta(k)-(1.0309e-04)*sum(val);
% end
% 
% %Now calculate cost function
% ans1=zeros(m,1);
% for i=1:m
% ans1(i)=0.0052*((prediction(i)-y(i))^2);
% end
% J=sum(ans1);
% =========================================================================

end
