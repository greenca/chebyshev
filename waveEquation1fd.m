% Solve wave equation as a first-order system using finite differences.
function z = waveEquation1fd(N)

dx = 2/N;

A = zeros(N,N-1);
for i=1:N-1
    A(i,i) = 1;
    A(i+1,i) = -1;
end
B = zeros(N-1,N);
for i=1:N-1
    B(i,i) = -1;
    B(i,i+1) = 1;
end
C = B*A;

w = eig(C);
w = sort(w);

len = length(w);
for i=1:10
    z(i,1) = sqrt(w(len+1-i,1))/dx;
end