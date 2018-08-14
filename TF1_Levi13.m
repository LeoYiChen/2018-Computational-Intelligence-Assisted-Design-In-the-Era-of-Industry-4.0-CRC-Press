

function [ydata] = TF1_Levi13(x1, x2)

term1 = (sin(3.*pi.*x1)).^2;
term2 = (x1-1).^2.* (1+(sin(3.*pi.*x2)).^2);
term3 = (x2-1).^2.* (1+(sin(2.*pi.*x2)).^2);

ydata = term1 + term2 + term3;

end
