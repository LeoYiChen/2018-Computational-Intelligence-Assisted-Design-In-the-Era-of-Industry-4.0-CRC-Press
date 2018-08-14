% function [ ] = TF1_sincos2_plot()

% /*M-FILE SCRIPT TF1_sincos2_plot MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description: to plot TF1_sincos2
%
% Appendix comments:
%
% Usage:
%
%===================================================================================================
%  See Also:          TF1_sincos2_plot
%
%===================================================================================================
%
%
%===================================================================================================
%Revision -
%Date        Name    Description of Change email                  Location
%28-Oct-2009 Chen Yi Initial version       leo.chen.yi@gmail.com  Glasgow
%HISTORY$
%==================================================================================================*/

% TF1_sincos2_plot Begin

%%%%%%%%%%%% Step 1 - clear screen
tic
close('all');
clc
%%%%%%%%%%%% Step 2 - set initial values

plot_font_size = 14;
plot_linewidth = 2;

step = 0.1;
XMIN = -10; XMAX = 10;
YMIN = -10; YMAX = 10;

x = XMIN : step : XMAX ;
y = YMIN : step : YMAX ;

%%%%%%%%%%%% Step 3 - data generation

[ XX , YY ] = meshgrid( x , y );

ZZ = TF1_sincos2( XX , YY );

%%%%%%%%%%%% Step 4 - data plot

figure % figure No. 1
% set view point
AZ = -37.5; EL = 10;

view(AZ,EL);
shading flat;
colorbar('vert');

xlabel('x','fontsize',plot_font_size);
ylabel('y','fontsize',plot_font_size);
zlabel('z','fontsize',plot_font_size);

set(gca,'fontsize',plot_font_size) ;
% title('  ');

grid on ;
hold on;

meshc( XX , YY , ZZ);
set(gca,'fontsize',plot_font_size) ;
xlabel('x','fontsize',plot_font_size);
ylabel('x','fontsize',plot_font_size);
zlabel('f','fontsize',plot_font_size);
axis tight

% plot3(XX, YY, ZZ,'.','MarkerSize',18)

% http://www.mathworks.com/access/helpdesk/help/techdoc/index.html?/access/
% helpdesk/help/techdoc/ref/saveas.html
% ext  Format
%
% ai Adobe?Illustrator `88
%
% bmp Windows bitmap
%
% emf Enhanced metafile
%
% eps EPS Level 1
%
% fig MATLAB figure (invalid for Simulink block diagrams)
%
% jpg JPEG image (invalid for Simulink block diagrams)
%
% m MATLAB M-file (invalid for Simulink block diagrams)
%
% pbm Portable bitmap
%
% pcx Paintbrush 24-bit
%
% pdf Portable Document Format
%
% pgm Portable Graymap
%
% png Portable Network Graphics
%
% ppm Portable Pixmap
%
% tif TIFF image, compressed
%
saveas(gcf,'TF1_sincos2','jpg');
saveas(gcf,'TF1_sincos2','eps');
saveas(gcf,'TF1_sincos2','pdf');
saveas(gcf,'TF1_sincos2','fig');

% figure  % figure No. 2
%
% grid on ;
% hold on;
%
% plot(ZZ);
%
% xlabel('x,y');
% ylabel('z');
%
% % title(' ');
% colorbar('vert');
% saveas(gcf,'TF1_sincos2','pdf');
% plot3(0, 10, 10,'.','MarkerSize',18)
clear all

toc
% TF1_sincos2_plot End