function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
#add bias term
X =[ones(m,1) X] ;
#shape : 5000x401 * 401x25 = 5000x25
output_one = sigmoid(X * Theta1');

#shape 5000x26 * 26x10
output_one = [ones(m,1) output_one];
output_last = sigmoid(output_one * Theta2')

[value,p] = max(output_last,[],2)




% =========================================================================


end
