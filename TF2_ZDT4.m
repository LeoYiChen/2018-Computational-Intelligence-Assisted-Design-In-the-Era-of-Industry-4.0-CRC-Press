function [ y ] = TF2_ZDT4( x )

% /*M-FILE FUNCTION TF2_ZDT4 MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description:
%
%
% where:
%  0 < x < 1
% 
% two objectives: y(1), y(2)
% 
%
%    Subject: 
% 
% Reference:
%
% Appendix comments:
%
% Usage:
%
%===================================================================================================
%  See Also:
%
%===================================================================================================


%===================================================================================================
%Revision -
%Date        Name    Description of Change email                  Location
%01-Nov-2009 Chen Yi Initial version       leo.chen.yi@gmail.com  Glasgow
%HISTORY$
%==================================================================================================*/

% TF2_ZDT4 Begin

y = [0, 0];

numVar = length(x);

g = 91 + gsubfunc(x);
h = 1 - (y(1)/g);

y(1) = x(1);

y(2) = g * h;


% TF2_ZDT4 End

function [gsubf] = gsubfunc(x)

gsubf   = 0;
dlength = length(x);

for ind = 2 : 1 : dlength

    gsubf = gsubf + x(ind).^2 - 10.*cos(4.*pi.*x(ind));

end