load waveEquation1bde_eigenfcn.mat

figure(1);
hold on;

for n=1:length(D)
    Dvec(n) = D(n,n);
end
Dsort = sort(Dvec);

x = -1:0.1:1;
for n=0:N
    Tnmat(:,n+1) = Tn(n,x)';
end

%for i=length(d)-2:-1:length(d)-2
%for i=1:length(Dsort)
for i=1:9
%for index=1:length(Dvec)
    if ~isnan(Dsort(i))
        index = find(Dvec == Dsort(i));
    %    disp(sqrt(d(i)))
        odds = 1:2:length(V(:,index));
        size(odds)
        size(Tnmat)
        size(V(odds,index))
        plot(imag(Tnmat*V(odds,index)));
    end
end
