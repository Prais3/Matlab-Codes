% Name: Varun Jani

disp('pifunc on [0,1]')
[int, err, ier] = romberg(@pifunc, 0, 1, 1e-14);

disp(int)
disp(err)
disp(ier)

disp('logderiv on [1,e]')
[int, err, ier] = romberg(@logderiv, 1, exp(1), 1e-14);

disp(int)
disp(err)
disp(ier)

disp('erfderiv on [0,1]')
[int, err, ier] = romberg(@erfderiv, 0, 1, 1e-14);

disp(int)
disp(err)
disp(ier)

disp('erfderiv, [0,3]')
[int, err, ier] = romberg(@erfderiv, 0, 3, 1e-14);

disp(int)
disp(err)
disp(ier)