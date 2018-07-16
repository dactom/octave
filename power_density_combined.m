clear all;
powerW = linspace(150,370,50);
speed = linspace(1300,7000,50);
hatch = linspace(0.05,0.13,50);
power_opt = 370;
speed_opt = 1900;
hatch_opt = 0.09;
[P, S] = meshgrid(powerW,speed);
[P, H] = meshgrid(powerW, hatch);
[SS, H] = meshgrid(speed, hatch);
power_speed = P./(S.*hatch_opt);
power_hatch = P./(H.*speed_opt);
speed_hatch = power_opt./(SS.*H);
hold on;
%figure;
surf(P/norm(P), S/norm(S), power_speed);
%figure;
surf(P/norm(P), H/norm(H), power_hatch);
%figure;
surf(SS/norm(SS), H/norm(H), speed_hatch);










