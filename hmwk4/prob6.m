A = [-0.038, 18.984, 0, -32.174;
    -0.001, -0.632, 1, 0;
    0, -0.759, -0.518, 0;
    0, 0, 1, 0];

B = [10.1, 0;
    0, -0.0086;
    0.025, -0.011;
    0, 0];

Cont = [B(:,2) A*B(:,2) A*A*B(:,2) A*A*A*B(:,2)]
rankC = rank(Cont)

sec = 60;

xt = [300; 10*pi/180; 2*pi/180; 5*pi/180];
x0 = [250;0;0;0];



% 
% syms t
% [V,J] = jordan(A);
% eJt = [exp(J(1,1)*(t)), 0, 0, 0;
%     0, exp(J(2,2)*(t)), 0, 0;
%     0, 0, exp(J(3,3)*(t)), 0;
%     0, 0, 0, exp(J(4,4)*(t))];
% Aexp_t = V*eJt*inv(V);
% 
% [V,J] = jordan(inv(A));
% 
% Aexp_t_tau = 0;
% space = 0.5;
% for i=0+space:space:sec
%     eJA = [exp(J(1,1)*(t-(i-space))), 0, 0, 0;
%         0, exp(J(2,2)*(t-(i-space))), 0, 0;
%         0, 0, exp(J(3,3)*(t-(i-space))), 0;
%         0, 0, 0, exp(J(4,4)*(t-(i-space)))];
%     eJB = [exp(J(1,1)*(t-i)), 0, 0, 0;
%         0, exp(J(2,2)*(t-i)), 0, 0;
%         0, 0, exp(J(3,3)*(t-i)), 0;
%         0, 0, 0, exp(J(4,4)*(t-i))];
%     eA = V*eJA*inv(V);
%     eB = V*eJB*inv(V);
% 
%     Aexp_t_tau = Aexp_t_tau + (eA + eB) * space / 2.0;
% 
% end
% 
% 
% 
% Bu = Aexp_t_tau * (xt - Aexp_t *x0)
% 
% 
% xt_hat = Aexp_t * x0 + Aexp_t_tau * Bu

Wr = 0;
space = 0.005;
for i=0+space:space:sec
    eA = expm(A*(sec-(i-space)))* B(:,2)* B(:,2)'*expm(A*(sec-(i-space)))';
    eB = expm(A*(sec-i))* B(:,2)* B(:,2)'*expm(A*(sec-i))';

    Wr = Wr + ((eA + eB) * space / 2.0);

end
eta = inv(Wr)*(xt - expm(A*sec)*x0);


syms t
[V,J] = jordan(A);

eJt = [exp(J(1,1)*(sec-t)), 0, 0, 0;
    0, exp(J(2,2)*(sec-t)), 0, 0;
    0, 0, exp(J(3,3)*(sec-t)), 0;
    0, 0, 0, exp(J(4,4)*(sec-t))];

u2 = vpa(B(:,2)' * (V*eJt*inv(V))' * eta,3)


