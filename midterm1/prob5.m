syms w s 
A = [0,0,0,1,0,0;
    0,0,0,0,1,0;
    0,0,0,0,0,1;
    -w^2,0,0,0,0,0;
    0,0,0,1,0,0;
    0,0,-w^2,1,0,0];

det(s*eye(6)-A)
[vj,d] = jordan(A)