function [ z ] = TF2_BinhKorn( x, y )

% /*M-FILE FUNCTION TF2_BinhKorn MMM SGALAB */ %
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

% TF2_BinhKorn Begin

      z(1) = 4.*x.^2 + 4.*y.^2; 
      z(2) = (x - 5).^2 + (y - 5).^2;


% TF2_BinhKorn End


