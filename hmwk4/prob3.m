A = [-1,0;0,-1];
B = [-1;1];
C = [1,0;0,1];
D = [2;1]

[Abar,Bbar,Cbar,T] = ctrbf(A,B,C)


syms s
C*inv(s*eye(2)-A)*B+D
