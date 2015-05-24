function z = waveEquation1s(N)

blank = zeros(1,N+1);

for j=1:N-1
    
    xj = cos(j*pi/N);
    
    MZ = Z(xj,N);
    MY = Y(xj,N);
    
    A(2*j-1,:) = [MZ blank];
    B(2*j-1,:) = [blank MY];
    
    A(2*j,:) = [blank MZ];
    B(2*j,:) = [MY blank];
    
end

A(2*N-1,:) = [blank Z(-1,N)];
B(2*N-1,:) = [Y(-1,N) blank];

A(2*N,:) = [blank Z(1,N)];
B(2*N,:) = [Y(1,N) blank];

A(2*N+1,:) = [blank blank];
B(2*N+1,:) = [Y(-1,N) blank];

A(2*N+2,:) = [blank blank];
B(2*N+2,:) = [Y(1,N) blank];

d = eig(A,B);
d = sort(d);
len = length(d);
for i=1:12
    z(i,1) = d(len+1-i,1);
end