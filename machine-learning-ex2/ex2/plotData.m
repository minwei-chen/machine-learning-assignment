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

m = size(y);
POS = zeros(0, 2);
NEG = zeros(0, 2);

for i = 1:m
  if(y(i) == 1) 
    POS = [POS; [X(i, 1), X(i, 2)]];
  else 
    NEG = [NEG; [X(i, 1), X(i, 2)]];
  endif
endfor

plot(POS(:, 1), POS(:, 2), '+');
plot(NEG(:, 1), NEG(:, 2), 'o');








% =========================================================================



hold off;

end
