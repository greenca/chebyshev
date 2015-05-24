function y = diffTn(n,z)

%y = n*sin(n*acos(z))/sqrt(1-z^2);

if n==0
    y = 0;
elseif n==1
    y = Tn(0,z);
elseif n==2
    y = 4*Tn(1,z);
else
   y = 2*n*Tn(n-1,z) + (n/(n-1))*diffTn(n-1,z);
end

%y = 1/2*(z+(z^2-1)^(1/2))^n*n*(1+1/(z^2-1)^(1/2)*z)/(z+(z^2-1)^(1/2))+1/2*(z-(z^2-1)^(1/2))^n*n*(1-1/(z^2-1)^(1/2)*z)/(z-(z^2-1)^(1/2));

%if n==0
%    y = 0;
%else
%    y = (-n*z*Tn(n,z) + n*Tn(n-1,z))/(1-z^2);
%end