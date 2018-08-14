

function [ydata] = TF1_Matyas(x1, x2)

term1 = 0.26 .* (x1.^2 + x2.^2);
term2 = -0.48.*x1.*x2;

ydata = term1 + term2;

end

