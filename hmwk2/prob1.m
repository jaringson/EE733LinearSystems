A1 = [1,1,0;0,1,0;0,0,1];
A2 = [1,1,0;0,0,1;0,0,1];
A3 = [2,0,0,0;2,2,0,0;0,0,3,3;0,0,0,3];

syms s t

inv(s*eye(3)-A2)
ilaplace(inv(s*eye(3)-A2),s,t)


inv(s*eye(4)-A3)
ilaplace(inv(s*eye(4)-A3),s,t)