function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%


%Here, first we take an example,which is X(i,:) and keep it constant and
%store it in a variable. iterate through the centroids where each row is a 
%co-ordinate. find the best co-ord by calculating distance with X(i,:) 

m=size(X,1);
for i=1:m
    example_1=X(i,:);
    distance_vec=zeros(K,1);
    for j=1:K
        distance_vec(j,1)=sum((example_1-centroids(j,:)).^2);
    end
    [val,index]=min(distance_vec);
    idx(i,1)=index;
end








% =============================================================

end

