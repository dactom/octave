clear all;
load si; 
load mn;
load c;

%----Si hot tearing sensitivity -----------------


si_005 = si(0.9<si(:,2) & si(:,2) <0.99);
%x005 = 0.9:(0.99-0.9)/(length(si_005)-1):0.99;
y005 = trapz(si_005) * 0.01;

si_01 = si(0.9<si(:,4) & si(:,4) <0.99);
%x01 = 0.9:(0.99-0.9)/(length(si_01)-1):0.99;
y01 = trapz(si_01) * 0.01;

si_02 = si(0.9<si(:,6) & si(:,6) <0.99);
%x02 = 0.9:(0.99-0.9)/(length(si_02)-1):0.99;
y02 = trapz(si_02) * 0.01;

si_03 = si(0.9<si(:,8) & si(:,8) <0.99);
%x03 = 0.9:(0.99-0.9)/(length(si_03)-1):0.99;
y03 = trapz(si_03) * 0.01;

si_04 = si(0.9<si(:,10) & si(:,10) <0.99);
%x04 = 0.9:(0.99-0.9)/(length(si_04)-1):0.99;
y04 = trapz(si_04) * 0.01;

si_05 = si(0.9<si(:,12) & si(:,12) <0.99);
%x05 = 0.9:(0.99-0.9)/(length(si_05)-1):0.99;
y05 = trapz(si_05) * 0.01;

si_06 = si(0.9<si(:,14) & si(:,14) <0.99);
%x06 = 0.9:(0.99-0.9)/(length(si_06)-1):0.99;
y06 = trapz(si_06) * 0.01;

si_07 = si(0.9<si(:,16) & si(:,16) <0.99);
%x07 = 0.9:(0.99-0.9)/(length(si_07)-1):0.99;
y07 = trapz(si_07) * 0.01;

si_08 = si(0.9<si(:,18) & si(:,18) <0.99);
%x08=0.9:(0.99-0.9)/(length(si_08)-1):0.99;
y08 = trapz(si_08) * 0.01;

si_09 = si(0.9<si(:,20) & si(:,20) <0.99);
%x09=0.9:(0.99-0.9)/(length(si_09)-1):0.99;
y09 = trapz(si_09) * 0.01;

si_1 = si(0.9<si(:,22) & si(:,22) <0.99);
%x1=0.9:(0.99-0.9)/(length(si_1)-1):0.99;
y1 = trapz(si_1) * 0.01;

hts_si = [y005, y01, y02, y03, y04, y05, y06, y07, y08, y09, y1];
x_si = [0.005, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];


%----Mn hot tearing sensitivity -----------------

mn_005 = mn(0.9 < mn(:,2) & mn(:,2) <0.99);
y_mn005 = trapz(mn_005) * 0.01;

mn_01 = mn(0.9 < mn(:,4) & mn(:,4) <0.99);
y_mn01 = trapz(mn_01) * 0.01;

mn_02 = mn(0.9 < mn(:,6) & mn(:,6) <0.99);
y_mn02 = trapz(mn_02) * 0.01;

mn_03 = mn(0.9 < mn(:,8) & mn(:,8) <0.99);
y_mn03 = trapz(mn_03) * 0.01;

mn_04 = mn(0.9 < mn(:,10) & mn(:,10) <0.99);
y_mn04 = trapz(mn_04) * 0.01;

mn_05 = mn(0.9 < mn(:,12) & mn(:,12) <0.99);
y_mn05 = trapz(mn_05) * 0.01;

mn_06 = mn(0.9 < mn(:,14) & mn(:,14) <0.99);
y_mn06 = trapz(mn_06) * 0.01;

mn_07 = mn(0.9 < mn(:,16) & mn(:,16) <0.99);
y_mn07 = trapz(mn_07) * 0.01;

mn_08 = mn(0.9 < mn(:,18) & mn(:,18) <0.99);
y_mn08 = trapz(mn_08) * 0.01;

mn_09 = mn(0.9 < mn(:,20) & mn(:,20) <0.99);
y_mn09 = trapz(mn_09) * 0.01;

mn_1 = mn(0.9 < mn(:,22) & mn(:,22) <0.99);
y_mn1 = trapz(mn_1) * 0.01;


hts_mn = [y_mn005, y_mn01, y_mn02, y_mn03, y_mn04, y_mn05, y_mn06, y_mn07, y_mn08, y_mn09, y_mn1];
x_mn = [0.005, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];


%----C hot tearing sensitivity -----------------

c_001 = c(0.9 < c(:,2) & c(:,2) <0.99);
y_c001 = trapz(c_001) * 0.01;

c_002 = c(0.9 < c(:,4) & c(:,4) <0.99);
y_c002 = trapz(c_002) * 0.01;

c_003 = c(0.9 < c(:,6) & c(:,6) <0.99);
y_c003 = trapz(c_003) * 0.01;

c_004 = c(0.9 < c(:,8) & c(:,8) <0.99);
y_c004 = trapz(c_004) * 0.01;

c_005 = c(0.9 < c(:,10) & c(:,10) <0.99);
y_c005 = trapz(c_005) * 0.01;

c_006 = c(0.9 < c(:,12) & c(:,12) <0.99);
y_c006 = trapz(c_006) * 0.01;

c_007 = c(0.9 < c(:,14) & c(:,14) <0.99);
y_c007 = trapz(c_007) * 0.01;

c_008 = c(0.9 < c(:,16) & c(:,16) <0.99);
y_c008 = trapz(c_008) * 0.01;

c_009 = c(0.9 < c(:,18) & c(:,18) <0.99);
y_c009 = trapz(c_009) * 0.01;

c_01 = c(0.9 < c(:,20) & c(:,20) <0.99);
y_c01 = trapz(c_01) * 0.01;

c_02 = c(0.9 < c(:,22) & c(:,22) <0.99);
y_c02 = trapz(c_02) * 0.01;


hts_c = [y_c001, y_c002, y_c003, y_c004, y_c005, y_c006, y_c007, y_c008, y_c009, y_c01, y_c02];
x_c = [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.2];

figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'LineWidth',2,'FontSize',12);


hl1 = line(x_si,hts_si,...
	   'Marker', '*',...
	   'MarkerSize', 12,...
	   'Color','r',...
	   'LineWidth',2,...
	   'Parent', axes1);

hl2 = line(x_mn, hts_mn,... 
	   'Marker', 'x',...
	   'Color','g',...
	   'LineWidth',2,...
	   'Parent', axes1);

% Create xlabel
xlabel('Si, Mn, wt%','FontSize',14);
ylabel('Hot tearing sensitivity','FontSize',14);



axes2 = axes('Position',get(axes1,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
	   'Box', 'off',...
           'FontSize', 12,...
	   'YLim', get(axes1, 'YLim'));
     
       
hl3 = line(x_c,hts_c,...
	    'Marker', '+',...
	    'Color','b',...
	    'LineWidth',2,...
	    'Parent', axes2);

text(0.1,370,'C, wt%', 'FontSize', 14, 'Color', 'b')
%xlabel('C, wt%','FontSize',14, 'Textcolor', 'b');
%ylabel('Hot tearing sensitivity','FontSize',14);

