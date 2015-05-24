load waveEquation1bde_eigenfcn.mat

for n=1:length(D)
    Dvec(n) = D(n,n);
end
Dsort = sort(Dvec);

x = -1:0.1:1;
for n=0:N
    Tnmat(:,n+1) = Tn(n,x)';
    for m=1:length(x)
        diffTnmat(m,n+1) = diffTn(n,x(m));
        diff2Tnmat(m,n+1) = diff2Tn(n,x(m));
    end
end

%for i=length(d)-2:-1:length(d)-2
%for i=1:length(Dsort)
for i=1:9
%for index=1:length(Dvec)
    if ~isnan(Dsort(i)) & abs(Dsort(i)) > 10^-15;
        
        disp(Dsort(i));
        
        index = find(Dvec == Dsort(i));

        odds = 1:2:length(V(:,index));
        evens = 2:2:length(V(:,index));
        
        figure(1);hold on;
        plot(imag(Tnmat*V(odds,index)));
        plot(imag(diffTnmat*V(evens,index)/Dsort(i)),'r');
        plot(imag(diff2Tnmat*V(odds,index)/Dsort(i)^2),'g');
        plot(imag(Tnmat*V(odds,index)));
        figure(2);hold on;
        plot(real(Tnmat*V(odds,index)));
        plot(real(diffTnmat*V(evens,index)/Dsort(i)),'r');
        plot(real(diff2Tnmat*V(odds,index)/Dsort(i)^2),'g');
        plot(real(Tnmat*V(odds,index)));
        
        figure(3);hold on;
        plot(imag(Tnmat*V(evens,index)));
        plot(imag(diffTnmat*V(odds,index)/Dsort(i)),'r');
        plot(imag(Tnmat*V(evens,index)));
        figure(4);hold on;
        plot(real(Tnmat*V(evens,index)));
        plot(real(diffTnmat*V(odds,index)/Dsort(i)),'r');
        plot(real(Tnmat*V(evens,index)));
                
    end
end
