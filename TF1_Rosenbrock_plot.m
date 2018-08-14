
% /*M-FILE SCRIPT TF1_Rosenbrock_plot MMM SwarmsLAB */ %
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

% TF1_Rosenbrock_plot Begin


clear all
home
close all
tic


plot_font_size = 14;
plot_linewidth = 2;

%% initialise input data
% x in [-1, 2]
x0   = -10;
x2   =  10;
step = 0.1;

xdata1 = x0: step: x2;
xdata2 = x0: step: x2;

%%%%%%%%%%%% data generation

[ XXdata1 , XXdata2 ] = meshgrid( xdata1 , xdata2 );

datalength = length(XXdata1);

for ind = 1 : 1: datalength
    for jnd =  1 : 1: datalength
        %% calculation
        
        YYdata(ind,jnd) = TF1_Rosenbrock([XXdata1(ind,jnd),XXdata2(ind,jnd)]);
        
    end
    
end


meshc( XXdata1 , XXdata2 , YYdata);
set(gca,'fontsize',plot_font_size) ;
xlabel('x','fontsize',plot_font_size);
ylabel('x','fontsize',plot_font_size);
zlabel('f','fontsize',plot_font_size);
axis tight

%% save figures
saveas(gcf,'TF1_Rosenbrock', 'pdf');
saveas(gcf,'TF1_Rosenbrock', 'jpg');
saveas(gcf,'TF1_Rosenbrock', 'eps');
saveas(gcf,'TF1_Rosenbrock', 'fig');

toc
% TF1_Rosenbrock_plot End