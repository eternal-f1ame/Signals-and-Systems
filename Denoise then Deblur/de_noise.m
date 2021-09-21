% Denoising %

%importing and storing data%
x = data.xn;
y = data.yn;

z=y;
%plotting the data%
y1 = denoising(y);


function y1 = denoising(y)
    for j = 1:13
        y1(1,1) = y(1,1);
        y1(193,1) =  y(193,1);
        for i =2:192
            %taking mean of the values and inserting them in a blank array%
            z = zeros(1,193);
            z(1,i-1:i+1) = 1/3;
            y1(i,1) = z*y;
        end
        y = y1;
    end
end

