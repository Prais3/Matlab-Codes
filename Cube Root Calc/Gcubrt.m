% Name: Varun Jani

function G = Gcubrt(z,a)
z_1 = z(1);
z_2 = z(2);

% Calculating g1 and g2 as follows
g_1 = (z_1)^3 - 3 * (z_1) * (z_2)^2 - a(1);
g_2 = -(z_2)^3 + 3 * (z_1)^2 * (z_2) - a(2);

% sending back g1 and g2 to the main function ComCubrt
G = [g_1;g_2];
end