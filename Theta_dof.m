clc,
clear,
clear all;

S1=0;
S2=30;
S3=40;
S=0;
theta31=0:+5:90;
theta23=0:+5:90;
fprintf('Theta12        S         Theta23\n');

for theta12=5:+5:50;
    
    S3=(-S1+S2*sind(theta23))/(S2*cosd(theta23));
    
    theta23=tand(theta23);
    
    S=S2*cosd(theta23)/cosd(theta12);
    
    fprintf('%8.4f    %8.4f     %8.4f    \n',theta23,S,theta12);
end

theta12=5:+5:50;      
figure
plot(theta23,theta12);
x=0 ,50;
y=0 ,50;
xlabel('Theta')
ylabel('Theta')
title('Angular velocity Vs Theta')

