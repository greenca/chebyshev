function y = phi(n,z)

if mod(n,2) == 0
    y = Tn(n,z) - 1;
else
    y = Tn(n,z) - z;
end