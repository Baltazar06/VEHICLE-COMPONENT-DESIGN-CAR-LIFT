clc,
clear,
clear all;

p =‘s*cos(b) =1-0.5*cos(a)’
q =‘s*sin(b =0.5*sin(a)’

[x,y] = solve(p,q)

a = 0;
[x] = subs(a)
[y] = subs(b)



i=1;
for a=0:0.1:6.3
phi(:,i)=subs(b)
S(:,i)=subs(s)
i=i+1;
end
theta=0:0.1:6.3
figure(1)
plot(theta,S(1,:))

grid
xlabel('Theta')
ylabel('S')
title('S Vs Theta')
figure(2)
plot(theta,phi(1,:))
grid
xlabel('Theta')
ylabel('Phi')
title('Phi Vs Theta')

L1 = 0.5;
omega = 3;
for i=1:size(theta,2)
A=[cos(phi(1,i)) -S(1,i)*sin(phi(1,i));...
sin(phi(1,i)) S(1,i)*cos(phi(1,i))];
B=[L1*omega*sin(theta(i));L1*omega*cos(theta(i))];
C=inv(A)*B;
linvel(1,i) = C(1);
angvel(1,i) = C(2)
end
figure(3)
plot(theta,linvel(1,:));grid
xlabel('Theta');
ylabel('linvel');
title('Linear velocity vs Theta');
figure(4)
plot(theta,angvel(1,:));grid
xlabel('Theta')
ylabel('Angvel')
title('Angular velocity Vs Theta')


L1 = 0.5;
omega = 3;
for i=1:size(theta,2)
A1=[cos(phi(1,i)) -S(1,i)*sin(phi(1,i));...
sin(phi(1,i)) S(1,i)*cos(phi(1,i))];
B1=[L1*(omega^2)*cos(theta(i))+2*linvel(1,i)*angvel(1,i)*sin(phi(1,i))+S(1,i)*(angvel(1,i)^2)*cos(phi(1,i));...
-L1*(omega^2)*sin(theta(i))-2*linvel(1,i)*angvel(1,i)*cos(phi(1,i))+S(1,i)*(angvel(1,i)^2)*sin(phi(1,i))];
C2=inv(A1)*B1;
Linaccl(1,i) = C2(1);
Angaccl(1,i) = C2(2);
end
figure(5)
plot(theta,linaccl(1,:));grid
xlabel('Theta');
ylabel('linaccl');
title('Linear acceleration vs Theta');
figure(6)
plot(theta,angaccl(1,:));grid
xlabel('Theta')
ylabel('angaccl')
title('Angular acceleration Vs Theta')