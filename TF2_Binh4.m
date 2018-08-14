function [ z ] = TF2_Binh4( x, y )

% /*M-FILE FUNCTION TF2_Binh4 MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description:
%
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

% TF2_Binh4 Begin

      z(1) = x.^2 - y ; 
      z(2) = -0.5.*x - y - 1;


% TF2_Binh4 End