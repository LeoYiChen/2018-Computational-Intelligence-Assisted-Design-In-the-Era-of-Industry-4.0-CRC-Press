function [ ydata ] = TF1_Schaffer4( x1 , x2 )
    
% /*M-FILE SCRIPT TF1_Schaffer4 MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
% ====================================================================================================
%File description:
%  Shaffer's F2 function to test SGALAB's performance
%  -100 < x1 < 100
%  -100 < x2 <100
%Appendix comments:

%Usage:

%===================================================================================================
%  See Also:         	
%
%===================================================================================================


%===================================================================================================
%Revision -
%Date        Name    Description of Change email                 Location
%18-May-2005 Chen Yi Initial version       chenyi2005@gmail.com  Shanghai 
%HISTORY$
%==================================================================================================*/
% TF1_Schaffer4 Begin 

fact1 = cos(sin(abs(x1.^2-x2.^2))) - 0.5;
fact2 = (1 + 0.001.*(x1.^2+x2.^2)).^2;

ydata = 0.5 + fact1./fact2;

% TF1_Schaffer4 End 