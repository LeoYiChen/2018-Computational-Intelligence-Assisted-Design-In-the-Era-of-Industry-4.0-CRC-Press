function [ z ] = TF2_ChakongHaimes( x, y )

% /*M-FILE FUNCTION TF2_ChakongHaimes MMM SGALAB */ %
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

% TF2_ChakongHaimes Begin

      z(1) = 2 + (x-2).^2 + (y-1).^2;
      z(2) = 9.*x - (y - 1).^2;

% TF2_ChakongHaimes End


