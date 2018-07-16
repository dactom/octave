% diffusion coefficient funtion of temperature and time
clear all;
T=200:10:800;    %temperature
D0=6.6*10^(-9); 
Q=-169100;           %activation energy
R=8.3144;           % J/mol-K
D(T)=D0*exp(Q./(R*(T+273)));  %diffusion coefficient
figure(1);
set(axes,'XDir','reverse', 'YDir', 'default');
hold on
plot(T,D(T),'k');
%title('Diffusion coefficient vs. Temperature');
xlabel('Temperature, C');
ylabel('Diffusion coefficient, m*s^{ -1}');
x=0.000000001:0.00000001:0.000001;
time300=x.*x/D(300);
time400=x.*x/D(400);
time450=x.*x/D(450)
time800=x.*x/D(800);
figure(2);
plot(x/0.00000001,time300/3600,'xr',x/0.00000001,time400/3600,'ob',x/0.00000001,time450/3600,'+k',x/0.00000001,time800/3600,'-k');
%title('Diffusion at 400C');
xlabel('Distance (nm)');
ylabel('Time, hours');
legend('300 C', '400 C', '450 C')
%figure(3);
%plot(x/0.00000001,time400/3600,'ob');
%title('Diffusion at 400C');
%xlabel('Distance (nm)');
%ylabel('Time, hours');
%legend('400 C')
%figure(4);
%plot(x/0.000001,time800/3600,'xr',x/0.000001,time700/3600,'ob');
%title('Diffusion at 700 C and 800C');
%xlabel('Distance (um)');
%ylabel('Time, hours');
%legend('800 C','700 C')