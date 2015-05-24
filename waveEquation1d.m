function z = waveEquation1d(N)

I = [1 0; 0 1];
D = [-1 0; 0 1];
V = (1/sqrt(2))*[-1 1; 1 1];

for n=0:N
    
    for j=1:N-1
        
        xj = cos(j*pi/N);
        
        A(2*j+1:2*j+2,2*n+1:2*n+2) = diffTn(n,xj)*I;
        B(2*j+1:2*j+2,2*n+1:2*n+2) = Tn(n,xj)*D;
        
    end
    
    A(2*N-1,2*n+1:2*n+2) = [0 0];
    B(2*N-1,2*n+1:2*n+2) = diffTn(n,1)*[0 1]*V;
    
    A(2*N,2*n+1:2*n+2) = [0 0];
    B(2*N,2*n+1:2*n+2) = diffTn(n,-1)*[0 1]*V;
   
    A(2*N+1,2*n+1:2*n+2) = [0 0];
    B(2*N+1,2*n+1:2*n+2) = Tn(n,1)*[1 0]*V;
    
    A(2*N+2,2*n+1:2*n+2) = [0 0];
    B(2*N+2,2*n+1:2*n+2) = Tn(n,-1)*[1 0]*V;

end

d = eig(A,B);
%len = length(d);
%for i=1:len
%    z(i,1) = d(i,1)^2;
%end
z = d;