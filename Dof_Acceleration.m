
L1 = 0.5;
omega = 3;
theta =5*pi/18;
s=0.5;
a=0.7;
b=0.45;
phi(1,i)=subs(b)
S(1,i)=subs(s)






for i=1:size(theta,2)
 A1=[cos(phi(1,i)) -S(1,i)*sin(phi(1,i));...
 sin(phi(1,i)) S(1,i)*cos(phi(1,i))];

B1=[L1*(omega^2)*cos(theta(i))+2*linvel(1,i)*angvel(1,i)*sin(phi(1,i))+S(1,i)*(angvel(1,i)^2)*cos(phi(1,i));...
    -L1*(omega^2)*sin(theta(i))-2*linvel(1,i)*angvel(1,i)*cos(phi(1,i))+S(1,i)*(angvel(1,i)^2)*sin(phi(1,i))];
 
C2=inv(A1)*B1;
Linaccl(1,i) = C2(1);
Angaccl(1,i) = C2(2);
end
figure(1)
plot(theta,Linaccl(1,:));grid
xlabel('Theta');
ylabel('Linaccl');
title('Linear acceleration vs Theta');
figure(2)
plot(theta,Angaccl(1,:));grid
xlabel('Theta')
ylabel('Angaccl')
title('Angular acceleration Vs Theta') 