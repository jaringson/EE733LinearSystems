A = [0,1;
    -1,0];
syms t s
inv(s*eye(2)-A)
expm(A*t)