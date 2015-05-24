load waveEquation2_eigenfcn.mat

figure(1);
hold on;

for n=1:length(D)
    Dvec(n) = D(n,n);
end

x = -1:0.1:1;
for n=0:length(D)-1
    Tnmat(:,n+1) = Tn(n,x)';
end

for i=length(d)-2:-1:length(d)-5
    index = find(Dvec == d(i));
    disp(sqrt(d(i)))
    plot(Tnmat*V(:,index));
end
