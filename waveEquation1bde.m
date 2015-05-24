% Solve wave equation as a first-order system using Chebyshev collocation and diff eqs satisfied on one boundary.
function z = waveEquation1bde(N)

I = [1 0; 0 1];
C = [0 1; 1 0];

for n=0:N
    
    for j=1:N
        
        xj = cos(j*pi/N);
        
        A(2*j+1:2*j+2,2*n+1:2*n+2) = diffTn(n,xj)*I;
        B(2*j+1:2*j+2,2*n+1:2*n+2) = Tn(n,xj)*C;
        
    end
        
    A(2*N+1,2*n+1:2*n+2) = [0 0];
    B(2*N+1,2*n+1:2*n+2) = Tn(n,1)*[1 0];
    
    A(2*N+2,2*n+1:2*n+2) = [0 0];
    B(2*N+2,2*n+1:2*n+2) = Tn(n,-1)*[1 0];

end

d = eig(A,B);
d = sort(d);
len = length(d);
%for i=1:12
%%    z(i,1) = d(len+1-i,1);
%    z(i,1) = d(i,1);
%end
z = d;

[V,D] = eig(A,B);
save waveEquation1bde_eigenfcn.mat