%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ECONMATIC - Stage I : Macroeconomics 

% Genç Ekonomistler Kulübü

% Owner : Yasin Tosun / Siegen University 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%{
####################### ##########################
  0 - C : National Income Accounting:
####################### ##########################
%}

%% *Simple Example-1: Keynesian Simple Open Model*


C = 100;
I = 50;
G = 30;
Ex = 40;
Im = 20;
NX = Ex - Im;

GDP = C + I + G + NX;

disp(GDP);

%{
Here, C, I, G, Ex and Im values are first assigned and NX (Net Export)
is being calculated. Then, GDP is calculated and printed on the screen.
%}
 

%% *Simple Example-2: Keynesian Simple Open Model*

YC = 50;
YMG = 30;

MG = YC + YMG;

disp(MG);

EP = YC/MG;
Labor = round(EP * 100, 2);
EmekShare = [num2str(Emek) '%'];
disp(EmekPayi);

SP = 1 - EP;
Capital = round(SP * 100, 2);
CapitalShare = [num2str(Capital) '%'];
disp(CapitalShare);

%{
Here, first YC and YMG values are assigned and GO (National Income)
is being calculated. Then, EP (Employment Share) is calculated and the Labor variable is
is thrown away. Afterwards, the Labor variable is converted to string and marked with the % sign.
together are thrown into the EmekPayi variable. Calculating SP (Share of Capital)
and thrown into the Capital variable. The capital variable is converted to string,
It is added to the CapitalShare variable along with the % sign. Finally,
EmekPayi and CapitalPayi variables are printed to the screen.
%}



