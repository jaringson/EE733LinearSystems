format short
A = [-0.038, 18.984, 0, -32.174;
    -0.001, -0.632, 1, 0;
    0, -0.759, -0.518, 0;
    0, 0, 1, 0];
B = [10.1,0;
    0, -0.0086;
    0.025, -0.011;
    0,0];
% syms s
% solve(vpa(det(s*eye(4)-A)))

[V,D] = eig(A);

syms t
for i=1:4
    vpa(exp(D(i,i)*t)*V(:,i),3)
end
    
inv(V)*B
