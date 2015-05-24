function M = Z(x,N)

for n=0:N
    M(1,n+1) = diffTn(n,x);
end