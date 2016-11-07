% applies sigmoid function to output

function [y] = sigmoid(x)

z = x * -1;
y = 1/(1+exp(z));