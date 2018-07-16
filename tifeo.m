clear all;
clc;
x1 = [98.64,98.19,97.74,98.675,98.67,98.71,98.87,98.89,98.09,97.29,97.55,98.92,97.12,98.45,98.42,98.62,98.62,98.84,98.94,99.17,97.95,97.65,97.42,98.69,99.24,98.69,98.74,98.62,98.62,98.64,98.81,98.41,98.21,98.49,98.31,98.04,98.51,97.94,98.425,98.42,98.445,98.655,97.49,97.19,97.04,98.41,98.78,98.78,98.72,97.7,97.5,97.4,98.51,98.43,98.44,98.43,98.41];    %Ti
x2 = [1,1.5,2,1,1,1,0.9,0.9,1.5,2.3,2,0.8,2.5,1.2,1.2,1,1,0.8,0.7,0.55,1.7,2,2.2,1,0.45,1,0.9,1,1,1,0.9,1.2,1.2,0.7,0.9,1.2,1.2,1.2,1,1,1,0.75,2,2.3,2.5,1,0.6,0.6,0.65,1.8,2,2.15,0.9,1,1,1,1];    %Fe
x3 = [0.34,0.29,0.24,0.28,0.28,0.23,0.22,0.2,0.39,0.39,0.42,0.27,0.37,0.33,0.37,0.37,0.37,0.34,0.34,0.27,0.32,0.32,0.37,0.29,0.29,0.29,0.34,0.37,0.37,0.34,0.27,0.37,0.57,0.77,0.75,0.72,0.27,0.82,0.53,0.53,0.5,0.55,0.49,0.49,0.44,0.57,0.6,0.6,0.61,0.48,0.48,0.43,0.56,0.54,0.53,0.54,0.56];    %O
y = [800,790,810,780,810,820,720,680,880,890,950,680,910,820,830,830,870,800,790,680,880,890,910,770,730,760,810,820,840,790,810,860,990,1100,1130,1150,820,1190,1010,1040,1020,1010,970,990,980,980,980,990,930,970,980,960,970,990,990,950,1010];     %Tensile
x=[ones(length(y),1), x1(:), x2(:) x3(:)];
b = regress(y(:),x);