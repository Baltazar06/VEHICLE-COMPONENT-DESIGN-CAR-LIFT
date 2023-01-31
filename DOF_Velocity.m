clc,
clear,
clear all;


L1 = 0.5;
omega = 3;
theta =5*pi/18;
s=0.5;
a=0.7;
b=0.45;



for i=1:size(theta,2)
 A=[cos(phi(1,i)) -S(1,i)*sin(phi(1,i));...
 sin(phi(1,i)) S(1,i)*cos(phi(1,i))];
 B=[L1*omega*sin(theta(i));L1*omega*cos(theta(i))];
 C=inv(A)*B;
 linvel(1,i) = C(1);
 angvel(1,i) = C(2) 
end
figure(1)
plot(theta,linvel(1,:));grid
xlabel('Theta');
ylabel('linvel');
title('Linear velocity vs Theta');
figure(2)
plot(theta,angvel(1,:));grid
xlabel('Theta')
ylabel('Angvel')
title('Angular velocity Vs Theta')