

function [ydata] = TF1_Eggholder(x1, x2)


term1 = -(x2+47).* sin(sqrt(abs(x2+x1./2+47)));
term2 = -x1.* sin(sqrt(abs(x1-(x2+47))));

ydata = term1 + term2;

end
