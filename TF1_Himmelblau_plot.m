
% /*M-FILE SCRIPT TF1_Himmelblau_plot MMM SwarmsLAB */ %
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

% TF1_Himmelblau_plot Begin


clear all
home
close all
tic


plot_font_size = 14;
plot_linewidth = 2;

%% initialise input data
% x in [-1, 2]
x0   = -10;
x2   = 10;
step = 0.1;

xdata1 = x0: step: x2;
xdata2 = x0: step: x2;

%%%%%%%%%%%% data generation

[ XXdata1 , XXdata2 ] = meshgrid( xdata1 , xdata2 );

YYdata = TF1_Himmelblau( XXdata1 , XXdata2 );

meshc( XXdata1 , XXdata2 , YYdata);
set(gca,'fontsize',plot_font_size) ;
xlabel('x1','fontsize',plot_font_size);
ylabel('x2','fontsize',plot_font_size);
zlabel('f','fontsize',plot_font_size);
axis tight


%% save figures
saveas(gcf,'TF1_Himmelblau', 'pdf');
saveas(gcf,'TF1_Himmelblau', 'jpg');
saveas(gcf,'TF1_Himmelblau', 'eps');
saveas(gcf,'TF1_Himmelblau', 'fig');

toc
% TF1_Himmelblau_plot End