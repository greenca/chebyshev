% Solve wave equation as a first-order system using Chebyshev collocation with homogenized boundary conditions.
function z = waveEquationChebyshev(N)

A = zeros(2*N+2,2*N+2);
B = zeros(2*N+2,2*N+2);

blank = zeros(1,N+1);

for j=0:N
    
    phivec = zeros(1,N+1);
    dphivec = zeros(1,N+1);
    Tvec = zeros(1,N+1);
    dTvec = zeros(1,N+1);
    
    xj = cos(j*pi/N);
    
    for n=0:N
        
        phivec(1,n+1) = phi(n,xj);
        dphivec(1,n+1) = diffphi(n,xj);
        Tvec(1,n+1) = Tn(n,xj);
        dTvec(1,n+1) = diffTn(n,xj);
        
    end
    
    A(2*j+1,:) = [dphivec blank];
    A(2*j+2,:) = [blank dTvec];
    B(2*j+1,:) = [blank Tvec];
    B(2*j+2,:) = [phivec blank];

end

d = eig(A,B);
d = sort(d);
len = length(d);
%for i=1:12
%%    z(i,1) = d(len+1-i,1);
%    z(i,1) = d(i,1);
%end
z = d;