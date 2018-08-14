

function [ydata] = TF1_threecamel(x1, x2)

term1 = 2.*x1.^2;
term2 = -1.05.*x1.^4;
term3 = x1.^6./ 6;
term4 = x1.*x2;
term5 = x2.^2;

ydata = term1 + term2 + term3 + term4 + term5;

end
