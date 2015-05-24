function y = diff2Tn(n,z)

y = -n^2*cos(n*acos(z))/(1-z^2)+n*sin(n*acos(z))/(1-z^2)^(3/2)*z;