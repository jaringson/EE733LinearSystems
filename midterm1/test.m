A = [0,1;-4,-3];
B = [0;2];
C = [1,0];
D = [0];

syms t;

expm(A*t)

[num,dem] = ss2tf(A,B,C,D)
tf(num,dem)