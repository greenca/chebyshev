% Solve wave equation as a second-order equation using finite differences. 
function z = waveEquation2fd(N)

dx = 2/N;

A = -2*eye(N-1);
for i=1:N-2
    A(i,i+1) = 1;
    A(i+1,i) = 1;
end

w = eig(A);
w = sort(w);

len = length(w);
for i=1:10
    z(i,1) = sqrt(w(len+1-i,1))/dx;
end