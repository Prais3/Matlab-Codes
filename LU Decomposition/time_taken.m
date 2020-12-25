% Name: Varun Jani
% CMPSC 455 - Homework 2

% Problem 4
% Declaring A as random 100 by 100 matrix
A = rand(100, 100);

% Code for lutx function
tic
lutx(A)
toc
i = toc;

% Code for modified_lutx function
tic
modified_lutx(A)
toc
j = toc;

% Code for lu function
tic
lu(A)
toc
k = toc;

disp("Time taken for normal lutx function: ")
disp(i)
disp("Time taken for the modified lutx function(for loop): ")
disp(j)
disp("Time taken for the inbuilt lu function: ")
disp(k)