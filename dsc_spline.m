% Calculate the area under curve of DSC by spline fir curve
clear all;
clc;
load dsc.dat;

xi = linspace(-30,450,3660);
temp = dsc(:,1);                             % temperature data
bl = dsc(:,2);                                  %Base line data
hf = dsc(:,3);                                  %Raw data heat flow

xx = temp;
pp = spline(xi,hf);
yy = ppval(pp,xx);


plot (temp,hf-bl+20.26,temp,yy-bl+20.26);
%title('Poly^3 vs. BL');
%xlabel('Temperature, C');
%ylabel('Heat flow, mW');
% integral
int = quad(@ppval,225,273,[],[],pp);
polycoord = [0 225; 0 273; 25 273; 24.78 225];
poly_tot_area = polyarea(polycoord(:,1),polycoord(:,2));
first_peak_area = poly_tot_area - int
