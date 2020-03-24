A = [1,0;4,-1];
B = [-1;2];
C = [3,0];
D = [5];

syms t;

expm(A*t)

[num,dem] = ss2tf(A,B,C,D)
tf(num,dem)
syms s;
C*(s*eye(2)-A)^-1 * B +D

C*adjoint(s*eye(2)/det(s*eye(2)-A)-A)*B+D

(C*adjoint(s*eye(2)-A)*B+det(s*eye(2)-A)*D)/det(s*eye(2)-A)
