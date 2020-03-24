
A = [-0.038, 18.984, 0, -32.174;
    -0.001, -0.632, 1, 0;
    0, -0.759, -0.518, 0;
    0, 0, 1, 0];

B = [10.1, 0;
    0, -0.0086;
    0.025, -0.011;
    0, 0];

syms s 
poles = double(solve(vpa(det(s*eye(4)-A))));


theta1 = tan(real(poles(1)) / imag(poles(1)));
theta2 = tan(real(poles(3)) / imag(poles(3)));

imag1 = 15*real(poles(1))/atan(theta1);
imag2 = 15*real(poles(3))/atan(theta2);

P = [15*real(poles(1))-imag1*j, 15*real(poles(1))+imag1*j, ...
        15*real(poles(3))+imag2*j , 15*real(poles(3))-imag2*j];
      
k = place(A,B,P);

C = [1,0,0,0;
    0,1,0,0;
    0,0,1,0;
    0,0,0,1];

step(A-B*k, B(:,2),C,0)
