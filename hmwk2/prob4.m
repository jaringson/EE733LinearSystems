syms t t0 s

one = [exp(t)*cos(2*t),exp(-2*t)*sin(2*t);
        -exp(t)*sin(2*t),exp(-2*t)*cos(2*t)];

two = [exp(t0)*cos(2*t0),exp(-2*t0)*sin(2*t0);
        -exp(t0)*sin(2*t0),exp(-2*t0)*cos(2*t0)];
    
phi = simplify(one*inv(two));

A = simplify(diff(phi, t) * inv(phi));

det(s*eye(2)-A)
root([1,1, - (9*cos(4*t)^2)/4 - (9*sin(4*t)^2)/4 + 17/4])
% simplify(A * phi)
simplify(eig(A))