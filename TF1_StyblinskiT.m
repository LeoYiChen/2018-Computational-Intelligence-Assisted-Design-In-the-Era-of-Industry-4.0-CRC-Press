function [ydata] = TF1_StyblinskiT(xdata)

% TF1_StyblinskiT Begin

d   = length(xdata);
sum = 0;

for ind = 1:1:d
	xi = xdata(ind);
	new = xi.^4 - 16.*xi.^2 + 5.*xi;
	sum = sum + new;
end

ydata = sum./2;

end


% TF1_StyblinskiT End