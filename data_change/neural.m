% choose an image from 1-10,0000
function [Index] = neural(img,data,w1,w2,wf,b1,b2)


%load float.mat;
%input
input = func(img,data);

%first layer
input2 = (w1 * input) + b1;

input2 = arrayfun(@sigmoid,input2);

%second layer
input3 = (w2 * input2) + b2;
input3 = arrayfun(@sigmoid,input3);

%last layer, no bias
output = wf * input3;
output = arrayfun(@sigmoid,output);

[Probability,Index] = max(output);