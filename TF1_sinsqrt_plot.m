%function [ ] = TF1_sinsqrt_plot()

% /*M-FILE SCRIPT TF1_sinsqrt_plot MMM SGALAB */ %
% /*==================================================================================================
%  Simple Genetic Algorithm Laboratory Toolbox for Matlab 7.x
%
%  Copyright 2009 The SxLAB Family - Yi Chen - leo.chen.yi@gmail.com
% ====================================================================================================
% File description: to plot TF1_sinsqrt_plot
%
% Appendix comments:
%
% Usage:
%
%===================================================================================================
%  See Also:          TF1_sinsqrt_plot
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

% TF1_sinsqrt_plot Begin

%%%%%%%%%%%% Step 1 - clear screen
tic
close('all');
clc
%%%%%%%%%%%% Step 2 - set initial values


plot_font_size = 14;
plot_linewidth = 2;

step = 0.2;
% generation = 1;


figure

AZ = -37.5;
EL = 10;
view(AZ,EL);
shading flat;
colorbar('vert');

xlabel('x','fontsize',plot_font_size);
ylabel('y','fontsize',plot_font_size);
zlabel('z','fontsize',plot_font_size);

hold on
grid on

% for ind = 1 : 1 : generation

% limit_values = randint(1,1,[1,30]);

limit_values = 50;

XMIN = -limit_values; XMAX = limit_values;
YMIN = -limit_values; YMAX = limit_values;

x = XMIN : step : XMAX ;
y = YMIN : step : YMAX ;

%%%%%%%%%%%% Step 3 - data generation

[ XX , YY ] = meshgrid( x , y );

ZZ = TF1_sinsqrt( XX , YY );

%%%% this line is to plot 3D data
%     plot3(XX, YY, ZZ,'.','MarkerSize',18, 'EraseMode' , 'xor');
meshc( XX , YY , ZZ);
set(gca,'fontsize',plot_font_size) ;
xlabel('x','fontsize',plot_font_size);
ylabel('x','fontsize',plot_font_size);
zlabel('f','fontsize',plot_font_size);
axis tight
%     pause(0.01);

% end

%%%%%%%%%%%% Step 4 - data plot


saveas(gcf,'TF1_sinsqrt','jpg');
saveas(gcf,'TF1_sinsqrt','eps');
saveas(gcf,'TF1_sinsqrt','pdf');
saveas(gcf,'TF1_sinsqrt','fig');

% plot3(0, 10, 10,'.','MarkerSize',18)
clear all

toc
% TF1_sinsqrt_plot End