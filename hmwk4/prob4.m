A = [6,4,1;
    -5,-4,0;
    -4,-3,-1];
B = [1;-1;-1];

poly(A)
syms s
det(s*eye(3)-A)
T = [B A*B A*A*B]*[1,-1,-2;0,1,-1;0,0,1]

Abar = inv(T)*A*T
Bbar = inv(T)*B
