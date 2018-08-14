function [ y ] = TF2_FonsecaFleming( x )

% /*M-FILE FUNCTION TF2_FonsecaFleming MMM SGALAB */ %
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

% TF2_FonsecaFleming Begin


  y(1) =  1 - exp( -calc_minus( x ) );

  y(2) =  1 - exp( -calc_plus( x ) );

% TF2_FonsecaFleming End


function [ data ] = calc_minus( x )

hlen = length(x);

data = 0;

for idx = 1 : 1 : hlen

data = data + (x(idx) - 1./(sqrt(hlen))).^2;

end



function [ data ] = calc_plus( x )

hlen = length(x);

data = 0;

for idx = 1 : 1 : hlen

data = data + (x(idx) + 1./(sqrt(hlen))).^2;

end
