
% /*M-FILE SCRIPT TF1_Ackley_plot MMM SwarmsLAB */ %
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

% plot_font_size Begin


clear all
home
close all
tic


plot_font_size = 14;
plot_linewidth = 2;

%% initialise input data
% x in [-40, 40]
x0   = -40;
x2   = 40;
step = 0.1;

xdata1 = x0: step: x2;
xdata2 = x0: step: x2;

%%%%%%%%%%%% data generation

[ XXdata1 , XXdata2 ] = meshgrid( xdata1 , xdata2 );

datalength = length(XXdata1);

for ind = 1 : 1: datalength
    for jnd =  1 : 1: datalength
        %% calculation
        
        YYdata(ind,jnd) = TF1_Ackley([XXdata1(ind,jnd),XXdata2(ind,jnd)]);
        
    end
    
end


meshc( XXdata1 , XXdata2 , YYdata);
% surf( XXdata1 , XXdata2 , YYdata);
set(gca,'fontsize',plot_font_size) ;
xlabel('x','fontsize',plot_font_size);
ylabel('x','fontsize',plot_font_size);
zlabel('f','fontsize',plot_font_size);
axis tight

%% plot function
% % figure
% % hold on;
% % % grid on;
% % plot(ydata1,ydata1);
% % set(gca,'fontsize',plot_font_size) ;
% % xlabel('x','fontsize',plot_font_size);
% % ylabel('f(x)','fontsize',plot_font_size);

% %% plot max point
% xmax = 1.85;
% ymax = 2.85;
% plot(xmax,ymax,'or','LineWidth',plot_linewidth);
% text(1.5,3,'(1.85, 2.85)','fontsize',plot_font_size) ;
%
% %% plot x, y lines
% SECF__replot_x(x,y,xmax);
% SECF__replot_y(x,y,ymax);
%
% text(-0.5,2,'f(x)=xsin(10\pix) + 1.0','fontsize',plot_font_size) ;
%
% set(gca,'fontsize',plot_font_size) ;
%
% axis tight

%% save figures
saveas(gcf,'TF1_Ackley', 'pdf');
saveas(gcf,'TF1_Ackley', 'jpg');
saveas(gcf,'TF1_Ackley', 'eps');
saveas(gcf,'TF1_Ackley', 'fig');

toc
% plot_font_size End