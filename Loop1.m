% Loop1
clear, clear all
 
% define parameters
 
a1=300;
a2=262.75;
a3=364;
a4=266.546;
beta=283.893*pi/180;
 
% define controlled variable
 
th23=30;   % DEGREES!!!
 
% Validate input
 
if th23>360 || th23<339.915 && th23>20.085 || th23<0 
% elseif th23< 339.915 || th23<0 || th23>204.634  % DEGREES!!!
    fprintf("\n Theta_23 value is out of acceptable range.\n")
    return
end
 
th23=th23*pi/180;    % Convert degrees to radians
    
% solve eqn
syms af12 gm41;
eqns = [ -a1*cos(gm41)- a2*cos(af12) + a3*cos(th23) == a4*cos(beta), -a1*sin(gm41)- a2*sin(af12) + a3*sin(th23) == a4*sin(beta)];
S = solve(eqns, [af12 gm41]);
 
Snumaf12=size(af12);    % Find number of solutions of alpha_12
Snumaf12=size(Snumaf12);
Snumaf12=Snumaf12(2);
 
 
Snumgm41=size(gm41);    % Find number of solutions of gamma_41
Snumgm41=size(Snumgm41);
Snumgm41=Snumgm41(2);
 
j=1;                    % Filter meaningless results in alpha_12
for i=1:Snumaf12
if S.af12(i,1)>0
    Valaf12(j) = S.af12(i,1);
    j=j+1;
end
 
end
 
j=1;                    % Filter meaningless results in gamma_41
for i=1:Snumgm41
% if S.gm41(i,1)>0
    Valgm41(j) = S.gm41(i,1);
    j=j+1;
% end
 
end
 
Alfa_12=double(Valaf12)*180/pi;
Theta_12 = Alfa_12+180;

Gamma_41 = double(Valgm41)+pi;
Theta_41 = Gamma_41*180/pi;
 
% Add final filters
 
     % Filter Theta_12
for i=1:length(Theta_12)
if Theta_12(1,i)>268.4
    if Theta_12(1,i)<270
        Disp_theta12(i) = Theta_12(1,i);
    end
end
 
end
 
     % Filter Theta_41
for i=1:length(Theta_41)
if Theta_41(1,i)>154.5
    if Theta_41(1,i)<204
        Disp_theta41(i) = Theta_41(1,i);
    end
end
 
end

% Display Results
Disp_theta12
Disp_theta41
 
if length(Disp_theta12)>1 || length(Disp_theta41)>1
    fprintf("\n   WARNING: Unexpectedly long final results found! \n")
end
 
% End of code


