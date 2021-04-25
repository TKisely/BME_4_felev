function f = my_db(Ts)
%MY_DB Summary of this function goes here
%   Detailed explanation goes here
global W umax
D=c2d(W, Ts, 'zoh'); %vezeto nullat kapunk, kezelni kell
B=D.Numerator{1};
find(B~=0)
nem_null = find(B~=0);
B=B(nem_null(1):end);
A = D.Denominator{1};
l0 = umax/A(1);
l1= 1/sum(B)-l0;
L= [l0 l1];
c_num=conv(L,A);
c_den= [1 -conv(L, B)];
Dc=tf(c_num, c_den,Ts);
D0=D*Dc;
Dyr= feedback(D0, 1,-1);
Dur=feedback(Dc,D,-1);
[y,t] = step(Dyr);
u=step(Dur,t);

f= (abs(max(abs(u))-umax)/umax)+abs(max(y)-1);
end

