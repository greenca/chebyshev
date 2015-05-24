% Solve wave equation as a second-order equation using Chebyshev collocation.
function z = waveEquation2(N)

for n=0:N
    
    for j=1:N-1
        
        xj = cos(j*pi/N);
        
        A(j,n+1) = diff2Tn(n,xj);
        B(j,n+1) = Tn(n,xj);
        
    end
    
    A(N,n+1) = 0;
    B(N,n+1) = Tn(n,1);
    
    A(N+1,n+1) = 0;
    B(N+1,n+1) = Tn(n,-1);
   
end

d = eig(A,B);
d = sort(d);
len = length(d);
for i=1:12
    z(i,1) = sqrt(d(len+1-i,1));
end

[V,D] = eig(A,B);
save waveEquation2_eigenfcn.mat