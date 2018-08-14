function [ schafferValue ] = TF1_schaffer6( x , y )
    
% /*M-FILE SCRIPT TF1_schaffer6 MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
% ====================================================================================================
%File description:
%  Shaffer's F6 function to test SGALAB's performance
%  -100 < x < 100
%  -100 < y <100
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
% TF1_schaffer6 Begin 

schafferValue = (0.5 - ( ( sin( sqrt( x.^2 + y.^2 ) ).^2 - 0.5 ) ./ ((1 + 0.01*( y.^2 + y.^2 )).^2 )));

% TF1_schaffer6 End 