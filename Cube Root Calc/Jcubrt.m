% Name: Varun Jani

function J = Jcubrt(z)
z_1 = z(1);
z_2 = z(2);

% Derivative of first part of g1 and g2 (sum and neg)
j_1 = 3*(z_1)^2 + 3*(z_2)^2;
j_2 = 3*(z_1)^2 - 3*(z_2)^2;

% Finally returning J (6*z1*z2 is derivative of second part of g1, g2)
J = [(j_1) (-6*(z_1)*(z_2)); (6*(z_1)*(z_2)) (j_2)];
end


