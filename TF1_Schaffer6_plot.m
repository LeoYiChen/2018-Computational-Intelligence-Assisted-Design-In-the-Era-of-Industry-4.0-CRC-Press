% function [  ] = TF1_schaffer6_plot()

% /*M-FILE SCRIPT TF1_schaffer6_plot MMM SGALAB */ %
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
% TF1_schaffer6_plot Begin


clear all
home
close all

tic


plot_font_size = 14;
plot_linewidth = 2;

step = 1;
XMIN = -100; XMAX = 100;
YMIN = -100; YMAX = 100;

x = XMIN: step : XMAX ;
y =YMIN : step : YMAX ;

[ XX , YY ] = meshgrid( x , y );

% shafferValue_plot = (0.5 - ( ( sin( sqrt( XX.^2 + YY.^2 ) ).^2 - 0.5 ) ./ ((1 + 0.01*( XX.^2 + YY.^2 )).^2 )));

[ schafferValue ] = TF1_schaffer6( XX , YY );

% to plot
figure
% set view point
AZ = -37.5; EL = 10;
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
% TF1_schaffer6_plot End

%% save figures
saveas(gcf,'TF1_Schaffer6', 'pdf');
saveas(gcf,'TF1_Schaffer6', 'jpg');
saveas(gcf,'TF1_Schaffer6', 'eps');
saveas(gcf,'TF1_Schaffer6', 'fig');

toc