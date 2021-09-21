
%taking inverse fourier transform of the divided output signal%
deblurred = real(inv_fft(de_blurred));

%plotting the deblurred signal%


figure(1)
stem(deblurred)
hold
stem(x)

figure(2)
plot(deblurred)
hold
plot(x)

%mean squared error%
mse = mean((deblurred' - x).^2);
disp(((mse)));
%function to calculate inverse%
function inv = inv_fft(y)
    w = 2*pi/193;
    for j = 1:193
        s = 0;
        %looping to calculate the expoentials%
        for i = 1:193
            s = s + y(i)*exp(sqrt(-1)*w*(i-1)*(j-1));
        end
        inv(j) = (1/193)*s;
    end
end