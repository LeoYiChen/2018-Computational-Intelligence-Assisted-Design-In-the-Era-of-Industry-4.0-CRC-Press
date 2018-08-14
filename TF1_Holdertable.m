

function [ydata] = TF1_Holdertable(x1, x2)

fact1 = sin(x1).*cos(x2);
fact2 = exp(abs(1 - sqrt(x1.^2+x2.^2)./pi));

ydata = -abs(fact1.*fact2);

end

