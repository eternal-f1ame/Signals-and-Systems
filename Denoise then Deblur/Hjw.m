c = 193;
w = 2*pi/c;
H = [];
%sampling of h to get the fourier transform to de blur%
for k = 1:c
    H(k,1) = (1/8)*( 3 + cos(2*w*(k-1)) + 4*cos(w*(k-1)));
    if H(k,1)<0.4
        H(k,1)=0.4;
    end
end
%output data cascaded%
h = H(1:193,1);