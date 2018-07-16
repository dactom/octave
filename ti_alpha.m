%Ti-alpha diffraction pattern
% HEXAGONAL
clear all;
t = 0:0.01:2*pi;
a=2.95;
c=4.72;
k_Cu=1.542;
CL=17.89;
h=[1 1 1 1 1 2 0 2 2 2];
k=[0 0 0 1 0 0 0 0 0 1];
l=[0 1 2 0 3 1 4 2 3 1];
d=1./sqrt(4*(h.^2+h.*k+k.^2)/(3*a^2)+l.^2/c^2)
theta=114.6*asin(k_Cu./(2.*d));
R=CL./d;
x1 = R(1)*cos(t);
y1 = R(1)*sin(t);
x2 = R(2)*cos(t);
y2 = R(2)*sin(t);
x3 = R(3)*cos(t);
y3 = R(3)*sin(t);
x4 = R(4)*cos(t);
y4 = R(4)*sin(t);
x5 = R(5)*cos(t);
y5 = R(5)*sin(t);
x6 = R(6)*cos(t);
y6 = R(6)*sin(t);
x7 = R(7)*cos(t);
y7 = R(7)*sin(t);
x8 = R(8)*cos(t);
y8 = R(8)*sin(t);
x9 = R(9)*cos(t);
y9 = R(9)*sin(t);
plot(x1,y1,'k',x2,y2,'k',x3,y3,'k',x4,y4,'k',x5,y5,'k',x6,y6,'k',x9,y9,'k');
title('Ti diffraction pattern');
axis ("square");
pause -1;
%axis([-25,25,-25,25]);
