

function [ydata] = TF1_Easom(x1, x2)

fact1 = -cos(x1).*cos(x2);
fact2 = exp(-(x1-pi).^2-(x2-pi).^2);

ydata = fact1.*fact2;

end
