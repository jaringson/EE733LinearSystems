a = [1,2;3,4];
b = norm(a,2);
% det(s*eye(2)-a*a')
% roots([1,-30,4])

syms x1 x2
% x = [x1;x2];
x = [1;1.4190];

t = norm(a*x,2)/norm(x,2)

% solve(t,x2)

% syms x y
% S = solve(x^2*y^2 - 2*x - 1 == 0,x^2 - y^2 - 1 == 0) 

roots([-9.8661,28,-19.8661])

