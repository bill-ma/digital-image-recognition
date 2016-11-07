% 1st layer: 784, 2nd layer: 200, 3rd layer: 200, 4th layer: 10
% Total nodes: 1194 

% A. Compute the number of all connections between different nodes in the network
% Total # of connections = 784*200 + 200*200 + 200*10 = 198,800

% B. If we use IEEE 754 double precision standard to store weights of connections, what is the size of all
% weights? What about single precision?

load NN.mat;

x = sum(finalW1L1);
sum1 = sum(x,2);

y = sum(finalW1L2);
sum2 = sum(y,2);

z = sum(finalSoftmaxTheta);
sum3 = sum(z,2);

totalsum = sum1 + sum2 + sum3

x = sum(single(finalW1L1));
sum1 = sum(x,2);

y = sum(single(finalW1L2));
sum2 = sum(y,2);

z = sum(single(finalSoftmaxTheta));
sum3 = sum(z,2);

totalsum_single = sum1 + sum2 + sum3




