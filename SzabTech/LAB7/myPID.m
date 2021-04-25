function y = myPID(x)
%MYPID y-ban visszater a 3 egyenlet hibajaval
%   Detailed explanation goes here
Ap=x(1);
Tc=x(2);
wc=x(3);

y(1)=2*Ap/(14-Tc)/wc/sqrt(1+wc^2)/sqrt(1+wc^2*Tc^2)-1;
y(2)=pi-pi/2-atan(wc)-atan(wc*Tc)-pi/4;
y(3)=40*Ap/Tc/(14-Tc)-10;

end

