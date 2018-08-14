function [ z ] = TF1_sinsqrt( x , y )

% /*M-FILE FUNCTION TF1_sinsqrt MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description:
%
%
% where:
%  -100 < x < 100
%  -100 < y <100
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
%Date        Name    Description of Change email                 Location
%18-May-2005 Chen Yi Initial version       leo.chen.yi@gmail.com  Shanghai
%HISTORY$
%==================================================================================================*/
% TF1_sinsqrt Begin

z = 10.*sin( sqrt(x.^2 + y.^2) )./ sqrt( 1 + x.^2 + y.^2 );

% TF1_sinsqrt End