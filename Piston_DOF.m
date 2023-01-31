clc, clear, clear all
S=0;
s1=30;
s2=40;
A=0;
theta31=0;
fprintf('Theta31      S         Theta23\n');
for theta23=0:+5:65
    A=(-s1+s2*sind(theta23))/(s2*cosd(theta23));
    theta31=tand(A);
    S=s2*cosd(theta23)/cosd(theta31);
    fprintf('%6.2f    %6.2f     %6.2f    \n',theta23,S,theta31);
end
 







