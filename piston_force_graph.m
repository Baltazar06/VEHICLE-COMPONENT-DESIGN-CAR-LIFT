clc,
clear,
clear all;
 
L=1.86;        %Length of a Lınk in meters
WL=72.8;       %Weight of a Lınk in kilograms
 
 
Cy=3824.35;  %C poınt reaction forces from plates in newtons
Dy=3824.35;  %D poınt reaction forces from plates in newtons
Ey=3678.75;  %E poınt reaction forces from plates in newtons
Hy=3678.75;  %H poınt reaction forces from plates in newtons
 
a=pi/36:pi/180:5*pi/18;  %Degree of a between  Link 4 and ground platform
b=asin((5/3)*tan(a));    %Degree of b between piston and ground platform
Lx=L*cos(a);
Ly=L*sin(a);
 
Ay=(Dy+Dy)/2; 
Gy=Ay+Dy+WL;
Ax=((Hy.*Lx)-(Ay.*Lx))./Ly;
Gx=Ax;
Fx=Ax;
Fy=Dy+Ay-WL;
 
 
Py=(2*Ey)+(3*WL/4)+Gy+(Cy/2)+(Fy/4)-(Hy-Ay)-((Hy-Ay)/4);%Piston Py
Px=Py*cot(b);%Piston Px          

f=(a); %Degree of radıan
P1=abs(Px./sin(b));%Piston force Px graph plot        
figure
plot(f,P1);
x=0 ,50;
y=0 ,14*10^4;

f=(a); %Degree of radıan                    
P2=abs(Py./sin(b)); %Piston force Py graph plot
figure
plot(f,P2);
x=0 ,50;
y=0 ,14*10^4;
