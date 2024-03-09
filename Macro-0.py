
# % ECONMATIC - Stage I : Macroeconomics 

# % Genç Ekonomistler Kulübü

# % Owner : Yasin Tosun / Siegen University 

####################### ##########################
# LESSON 0: National Income Accounting
####################### ##########################

# Simple Example: 1

# Keynesian Simple Open Model

C = 100 # Consumption expenditure
I = 50 # Capital expenditures
G = 30 # Government expenditure
Ex = 40# Export
Im = 20 # Import
NX = Ex - Im

GDP = C + I + G + NX # GDP calculation formula

print(GDP) # Print GDP value to the screen

'''
Here, C, I, G, Ex and Im values are first assigned and NX (Net Export)
is being calculated. Then, GDP is calculated and printed on the screen.
'''


# Simple Example: 2 #

# How is national income distributed between employees and entrepreneurs & owners?

YC = 50 # Employees (Labor Income)
YMG = 30 # Owners and Entrepreneurs

MG = YC + YMG # MG : National income

print(MG) # Print MG value to the screen

EP = YC / MG # EP : Share of Labor

Labor = round(EP*100, 2)
EmekShare = str(Emek) + "%"
print(EmekPayi)

SP = 1 - EP # SP : Share of Capital
Capital = round(SP*100, 2)
CapitalShare = str(Capital) + "%"
print(CapitalShare)

'''
Here, first YC and YMG values are assigned and GO (National Income) is calculated.
Next, EP (Employee's Share) is calculated and thrown into the Labor variable.
Afterwards, the Labor variable is converted to string and written with the % sign.
It is thrown into the EmekPayi variable. SP (Share of Capital) is calculated and Capital
is thrown into the variable. The capital variable is converted to string, with the % sign
are added to the CapitalShare variable. Finally, EmekPayi and CapitalPay
variables are printed to the screen.

'''