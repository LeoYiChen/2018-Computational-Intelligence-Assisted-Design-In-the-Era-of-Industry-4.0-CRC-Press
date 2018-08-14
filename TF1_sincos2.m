function [ z ] = TF1_sincos2( x , y )

% /*M-FILE FUNCTION TF1_sincos2 MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description:
%
%
% where:
%  -10 < x < 10
%  -10 < y < 10
%
%    Subject: x^2 + y^2 <= 9^2
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
% TF1_sincos2 Begin

z = (sin(x)./(x+eps)).*(sin(y)./(y+eps));

% TF1_sincos2 End