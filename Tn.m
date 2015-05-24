function y = Tn(n,z)

y = cos(n*acos(z));

%if n==0
%    y = 1;
%elseif n==1
%    y = z;
%else
%    y = 2*z*Tn(n-1,z) - Tn(n-2,z);
%end

%y = (1/2)*((z + sqrt(z^2-1))^n + (z - sqrt(z^2-1))^n);