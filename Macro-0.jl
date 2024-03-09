# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# % ECONMATIC - Stage I : Macroeconomics 

# % Genç Ekonomistler Kulübü

# % Owner : Yasin Tosun / Siegen University 

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

####################### ##########################
# 0 - C: National Income Accounting:
####################### ##########################

# Simple Example: 1

# Keynesian Simple Open Model

C = 100
I = 50
G = 30
Ex = 40
Im = 20
NX = Ex - Im

GDP = C + I + G + NX

println(GDP) # Print GDP value to the screen

"""
Here, C, I, G, Ex and Im values are first assigned and NX (Net Export)
is being calculated. Then, GDP is calculated and printed on the screen.
"""


# Simple Example: 2 #

# National income between employees and entrepreneurs & owners
# how is it distributed?

YC = 50
YMG = 30

MG = YC + YMG

println(MG)

EP = YC/MG
Labor = round(EP * 100, digits=2)
EmekPayi = string(Emek) * "%"
println(EmekPayi)

SP = 1 - EP
Capital = round(SP * 100, digits=2)
CapitalShare = string(Capital) * "%"
println(CapitalShare)

"""
Here, first YC and YMG values are assigned and GO (National Income) is calculated.
Next, EP (Employee's Share) is calculated and thrown into the Labor variable.
Afterwards, the Labor variable is converted to string and written with the % sign.
It is thrown into the EmekPayi variable. SP (Share of Capital) is calculated and Capital
is thrown into the variable. The capital variable is converted to string, with the % sign
are added to the CapitalShare variable. Finally, EmekPayi and CapitalPay
variables are printed to the screen.
"""