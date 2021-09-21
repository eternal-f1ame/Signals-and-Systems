
%dividing the fourier transforms to deblur%
de_blurred = deblur(yj,h);
function X = deblur(y,H)
    X = y./H;
end