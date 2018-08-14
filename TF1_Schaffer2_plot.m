% function [  ] = TF1_Schaffer2_plot()

% /*M-FILE SCRIPT TF1_Schaffer2_plot MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
% ====================================================================================================
%File description:
% to plot Shaffer's F6 function to test SGALAB's performance
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
% TF1_Schaffer2_plot Begin


clear all
home
close all

tic


plot_font_size = 14;
plot_linewidth = 2;

step = 0.01;
XMIN = -2; XMAX = 2;
YMIN = -2; YMAX = 2;

x = XMIN: step : XMAX ;
y =YMIN : step : YMAX ;

[ XX , YY ] = meshgrid( x , y );

[ schafferValue ] = TF1_Schaffer2( XX , YY );

% to plot
figure
% set view point
AZ = -35.5; EL = 10;
view(AZ,EL);
% % % shading flat;
% % % COLORBAR('vert');
% % xlabel('x');
% % ylabel('y');
% % zlabel('z');
% % title(' Schaffer''s F6 function ');

grid on ;
hold on;

meshc( XX , YY , schafferValue);
set(gca,'fontsize',plot_font_size) ;
xlabel('x','fontsize',plot_font_size);
ylabel('y','fontsize',plot_font_size);
zlabel('z','fontsize',plot_font_size);
axis tight

% figure
% grid on ;
% hold on;
% plot(shafferValue_plot);
% xlabel('x,y');
% ylabel('z');
% title(' Shaffer''s F6 function ');
% COLORBAR('vert');
% toc
% TF1_Schaffer2_plot End

%% save figures
saveas(gcf,'TF1_Schaffer2', 'pdf');
saveas(gcf,'TF1_Schaffer2', 'jpg');
saveas(gcf,'TF1_Schaffer2', 'eps');
saveas(gcf,'TF1_Schaffer2', 'fig');

toc