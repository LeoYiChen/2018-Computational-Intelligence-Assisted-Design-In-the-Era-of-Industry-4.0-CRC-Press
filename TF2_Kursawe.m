function [ y ] = TF2_Kursawe( x )

% /*M-FILE FUNCTION TF2_Kursawe MMM SGALAB */ %
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

% TF2_Kursawe Begin

      f_{1}\left(\boldsymbol{x}\right) & = \sum_{i=1}^{2} \left[-10 \exp \left(-0.2 \sqrt{x_{i}^{2} + x_{i+1}^{2}} \right) \right] \\
      & \\
      f_{2}\left(\boldsymbol{x}\right) & = \sum_{i=1}^{3} \left[\left|x_{i}\right|^{0.8}  + 5 \sin \left(x_{i}^{3} \right) \right] \\


% TF2_Kursawe End