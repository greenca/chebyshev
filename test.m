disp('Results from second-order Chebyshev solution:')
waveEquation2(20)

disp('Results from second-order finite difference solution:')
waveEquation2fd(20)

disp('Results from first-order finite difference solution:')
waveEquation1fd(20)

disp('Results from first-order Chebyshev solution with diffential equations satisfied on one boundary (method 1):')
waveEquation1bde(20)

disp('Results from first-order Chebyshev solution with overspecified BC (method 2):')
waveEquation1(20)

disp('Results from first-order finite difference solution with overspecified BC:')
waveEquation1fdbc(20)

disp('Results from first-order Chebyshev solution with one differential equation satisfied on the boundaries (method 3):')
waveEquation1eq(20)

disp('Results from first-order Chebyshev solution homogenized BC (method 4):')
waveEquationChebyshev(20)