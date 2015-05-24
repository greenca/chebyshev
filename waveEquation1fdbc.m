% Solve wave equation as a first-order system using finite differences and overspecified boundary conditions.
function z = waveEquation1fdbc(N)

dx = 2/N;

A = zeros(N,N);
for i=1:N-1
    A(i,i+1) = 1;
    A(i+1,i) = -1;
end
B = zeros(N,N);
B(1,1) = -1;
for i=1:N-1
    B(i,i+1) = 1;
    B(i+1,i) = -1;
end
B(N,N) = 1;
C = B*A;

w = eig(C);
w = sort(w);

len = length(w);
for i=1:10
    z(i,1) = sqrt(w(len+1-i,1))/(2*dx);
end