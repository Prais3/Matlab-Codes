% Name: Varun Jani

% I first define all the required variables, phi, b and A
% Then I use a for loop to find the solution of the linear system
% I use fprintf to print the solution of the linear system

phi = (1 + sqrt(5)) / 2;
b = [1; 1];
A = [[1 1]; [phi (1 - phi)]];

% Here I use the slash to find the solution
c = A\b;

for i = 1:length(c)
    fprintf("c%d = %f\n", i, c(i));
end
