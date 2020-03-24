
values = [];
time = [];
integral = 0;
space = 0.05;
all_x_prev = x0;

u = [];

space = 0.01;

for i=0:space:sec

    eA = expm(A*(sec-(i-space)))*B(:,2).*double(subs(u2,t,(i-space)));
    eB = expm(A*(sec-i))*B(:,2).*double(subs(u2,t,i));
    
    u = [u, double(subs(u2,t,i))];
    
    integral = integral + ((eA + eB) * space / 2.0);

%         eA = expm(A*(sec-(i-space)))* B(:,2)* B(:,2)'*expm(A*(sec-(i-space)))';
%         eB = expm(A*(sec-i))* B(:,2)* B(:,2)'*expm(A*(sec-i))';
%     
%         Wr = Wr + ((eA + eB) * space / 2.0);



    all_x = expm(A*i) * x0 + integral;
    all_x_prev = all_x;
    values = [values, all_x];
    time = [time, i];
end

xx = expm(A*sec) *x0 +integral

plot(time,values(1,:))
figure()
plot(time,values(2,:))
figure()
plot(time,values(3,:))
figure()
plot(time,values(4,:))