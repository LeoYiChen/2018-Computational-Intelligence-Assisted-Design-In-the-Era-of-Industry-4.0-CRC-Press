
% /*M-FILE SCRIPT TF1_all_plot MMM SwarmsLAB */ %
% /*==================================================================================================
%  Swarm Optimisation and Algorithm Laboratory Toolbox for MATLAB
%
%  Copyright 2016 The SxLAB Family - Yi Chen - leo.chen.yi@live.co.uk
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
%Date          Name     Description of Change  email
%31-Jul-2012   Yi Chen  Initial version        leo.chen.yi@live.co.uk
%HISTORY$
%==================================================================================================*/
%==================================================================================================*/

% TF1_all_plot Begin

clear all
home
close all
tic

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TF1_Ackley_plot
%%
TF1_Beale_plot
%%
TF1_Bukin6_plot
%%
TF1_schaffer6_plot
%%
TF1_sincos2_plot
%%
TF1_sinsqrt_plot
%%
TF1_Sphere_plot
%%
TF1_Rosenbrock_plot
%%
TF1_GPrice_plot
%%
TF1_Booth_plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

toc
% TF1_all_plot End