function ryx1x2x3 = cormt3c(x1,x2,x3,y)
ryx1 = cor(y,x1) ;
ryx2 = cor(y,x2);
ryx3 = cor(y,x3);
rx1x2 = cor(x1,x2);
rx1x3 = cor(x1,x3);
rx2x3 = cor(x2,x3);
p = [1,ryx1,ryx2,ryx3;ryx1,1,rx1x2,rx1x3;ryx2,rx1x2,1,rx2x3;ryx3,rx1x3,rx2x3,1]
p11 = [1,rx1x2,rx1x3;rx1x2,1,rx2x3;rx1x3,rx2x3,1];
ryx1x2x3 = sqrt(1 - (det(p)/det(p11)));