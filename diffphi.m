function y = diffphi(n,z)

if mod(n,2) == 0
    y = diffTn(n,z);
else
    y = diffTn(n,z) - 1;
end