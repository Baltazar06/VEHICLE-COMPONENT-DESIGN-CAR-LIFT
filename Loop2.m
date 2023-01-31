
% Loop closure Equation
clear,   clear all
 
% define parameters
 
a1=305.5;
a2=261.63;
a3=43.87;
 
 
% define controlled variable
 
th23=339.915;   % DEGREES!!!
 
 
% Validate input
 
if th23>360 || th23<339.915 && th23>20.085 || th23<0 
% elseif th23< 339.915 || th23<0 || th23>204.634  % DEGREES!!!
    fprintf("\n Theta_23 value is out of acceptable range.\n")
    return
end
 
 
th23=th23*pi/180;   % Convert to radians
 
 
syms S3 th13;
eqns = [S3*cos(th13) == -a3+a1*cos(th23), S3*sin(th13) == a2+a1*sin(th23)];
S = solve(eqns, [S3 th13]);
 
SnumS3=size(S3);    % Find number of solutions of S3
SnumS3=size(SnumS3);
SnumS3=SnumS3(2);
 
 
Snumth13=size(th13);    % Find number of solutions of th13
Snumth13=size(Snumth13);
Snumth13=Snumth13(2);
 
j=1;                    % Filter out negative solutions in S3
for i=1:SnumS3
if S.S3(i,1)>0
    ValS3(j) = S.S3(i,1);
    j=j+1;
end
 
end
 
j=1;                % Filter out negative solutions in th58
for i=1:Snumth13
if S.th13(i,1)>0
    Valth13(j) = S.th13(i,1);
    j=j+1;
end
 
end
 
 
% Display Results
Disp_S3=double(ValS3)
Disp_th13=double(Valth13)*180/pi
 
 
fprintf("  ")
% End of code

