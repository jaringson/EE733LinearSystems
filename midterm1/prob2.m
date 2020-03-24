A = [0,1,0,0;
    0,-0.1,-0.98,1;
    0,0,0,1;
    0,0.1,10.78,-11];
B = [0,0;
    0.1,-0.1;
    0,0,;
    -0.1,1.1];

[v,d] = eig(A);


% Part a
syms t

% MODES:
vpa(v(:,1)*exp(d(1,1)*t),2)
vpa(v(:,2)*exp(d(2,2)*t),2)
vpa(v(:,3)*exp(d(3,3)*t),2)
vpa(v(:,4)*exp(d(4,4)*t),2)

% Part b
B_m = inv(v)*B

% Part d
v_inv = inv(v)

% Part e
A*B(:,1)
A*B(:,2)


