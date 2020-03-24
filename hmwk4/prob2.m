Aa = [-1, 0, 0;
    0, -1, 0;
    0, 0, 0];
Ab = [-1, 0, 0;
    0, -1, 0;
    -1, 1, 0];
Ba = [1,0;
    0,1;
    0,0]
Bb = [1,0;
    0,1;
    1,-1]

Ca = [Ba, Aa*Ba, Aa*Aa*Ba]
rank(Ca)

Cb = [Bb, Ab*Bb, Ab*Ab*Bb]
rank(Cb)