A = [-0.038, 18.984, 0, -32.174;
    -0.001, -0.632, 1, 0;
    0, -0.759, -0.518, 0;
    0, 0, 1, 0];

B = [10.1, 0;
    0, -0.0086;
    0.025, -0.011;
    0, 0];

C = [1, 0, 0, 0;
    0,1,0,0;
    0,0,1,0;
    0,0,0,1];

sys = ss(A,B,C,0);
step(sys)