%extracting the data in varaibles%
yj = fourier(y1);
%%fourier transform of Y1%%
function q = fourier(y)
    q = [];
    w = 2*pi/193;
    %summation of the exponential componets%
    for k = 1:193
        s = 0;
        for i = 1:193
            s = s + y(i,1)*exp(-sqrt(-1)*w*(k-1)*(i-1));
        end
        q(k,1) = s;
    end
end