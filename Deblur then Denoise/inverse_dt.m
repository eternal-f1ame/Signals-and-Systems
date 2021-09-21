
%taking inverse fourier transform of the divided output signal%
deblurred = real(inv_fft(de_blurred));

%function to calculate inverse%
function inv = inv_fft(y)
    w = 2*pi/193;
    for j = 1:193
        s = 0;
        %looping to calculate the exponentials%
        for i = 1:193
            s = s + y(i)*exp(sqrt(-1)*w*(i-1)*(j-1));
        end
        inv(j) = (1/193)*s;
    end
end