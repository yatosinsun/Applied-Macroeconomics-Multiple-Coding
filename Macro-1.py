
# % ECONMATIC - Stage I : Macroeconomics 

# % Genç Ekonomistler Kulübü

# % Owner : Yasin Tosun / Siegen University 

####################### ##########################
# LESSON 1: NeoClassical Economics
####################### ##########################


# A: Classical Theory of Employment and Production


# Simple Example: A.1

# NeoClassical Production Function

"""
The relationship between factors of production and output is defined by a production function.
     is defined.
    
Y= A.F(N,K) (1)

When we consider the economy as a whole, total real production is another
     In other words, total supply (Y);
    
✓ amount of factor inputs (N, K) used,

✓ It depends on the degree of effective use of factor inputs (N, K).

Here, the symbol A is the factor that increases the efficiency of the economy's production inputs.
     Factors such as technological progress and improving the quality of education
     It is an autonomous growth factor that shows its effects.
    
Additionally, equation (1) says:
Capital consists of a homogeneous good that is the same as the good produced in the economy.
         is formed. So, output (Y) is either for consumption or investment purposes.
         available. Increase in capital stock when used for investment
         it occurs. Capital stock, total real production (Y), used
         Depends on the amount of labor (N).

"""

def total_production(N, K, A):
     Y = A * F(N, K)
     return Y

def F(N, K):
     # Here we can define the function that depends on the degree of effective use of factor inputs.
     F = N**0.5 * K**0.5
     return F

N=100# Labor quantity
K = 50# Capital amount
A = 2 # Efficiency level

Y = total_production(N, K, A)

print(Y)


# Simple Example: A.2

# Neoclassical Production Function (Labor and Output Relationship)

"""
In Figure 1, given the level of capital, the difference between the level of labor and output is
     relationship is seen. This neoclassical production function has the following properties:
     exhibits:
        
✓ The curve starts from the origin.
✓ Its slope is always positive.
✓ However, it gradually becomes smaller along the range.

"""

import numpy as np
import matplotlib.pyplot as plt

# Blue Graphic
A = 1.0 # Total factor productivity
alpha = 0.4 # Labor share parameter
L = np.linspace(0, 10, 100) # Labor quantity range
K = 5 # Amount of fixed capital

Y = A * (K**alpha) * (L**(1-alpha)) # Neoclassical Production Function

# Orange Graphic
A_1 = 1.0 # Total factor productivity
alpha_1 = 0.8 # Labor share parameter
L_1 = np.linspace(0, 10, 100) # Labor quantity range
K_1 = 5 # Fixed capital amount

Y_1 = A_1 * (K_1**alpha_1) * (L_1**(1-alpha_1)) # Neoclassical Production Function

plt.plot(L, L_1, Y, Y_1, linewidth=4)
plt.xlabel('Labor Force (L)')
plt.ylabel('Output (Y)')
plt.title('Neoclassical Production Function')

plt.show()

# Simple Example: A.3

# Labor Demand Line and Labor Marginal Productivity Line

"""
Labor demand line D_N is also the labor marginal productivity line
     Same as MP_N is true. In the neoclassical production function, the amount of labor
     We can say that as labor increases, the marginal product of labor decreases.
"""

import numpy as np
import matplotlib.pyplot as plt

A = 1.0 # Total factor productivity
alpha = 0.4 # Labor share parameter
L = np.linspace(0, 10, 100) # Labor quantity range
K = 5 # Amount of fixed capital

YY = A * (K**alpha) * (L**(1-alpha)) # Labor demand line
MP_N = alpha * A * (K**alpha) * (L**(alpha-1)) # Labor marginal productivity line

plt.plot(L, YY, label='Labor Demand Line', linewidth=2)
plt.plot(L, MP_N, '--', label='Labour Marginal Productivity Line', linewidth=2)

plt.xlabel('Labor Force (L)')
plt.ylabel('Output (Y) / Marginal Product (MP_N)')
plt.title('Labor Demand Line and Labor Marginal Productivity Line')
plt.legend()

plt.show()

# Simple Example: A.4

# Partial Derivatives of the Neoclassical Production Function


"""
The partial derivatives of the neoclassical production function are strictly positive:
             Each additional input creates additional output.
         Second order partial derivatives are negative:
             Additional output per unit additional input decreases.
"""


def neoclassical_uretim(L, K, A, alpha):
     Y = A * (K**alpha) * (L**(1-alpha))
     return Y

L = 2.0 # Labor quantity
K = 3.0 # Amount of capital
A = 1.5 # Total factor productivity
alpha = 0.3 # Labor share parameter

# Function value
Y = neoclassical_production(L, K, A, alpha)
print("Function value Y = = Y)

# Partial derivatives
partial_derivative_L = A * alpha * (K**alpha) * (L**(alpha-1))
partial_derivative_K = A * (K**(alpha-1)) * (L**alpha) * (1 - alpha)

print("Partial derivative with respect to L=", partial_derivative_L)
print("Partial derivative with respect to K=", partial_derivative_K)

# Second order partial derivatives
second_partial_L2 = A * alpha * (alpha - 1) * (K**alpha) * (L**(alpha-2))
second_partial_K2 = A * (alpha * (K**(alpha-1)) * (L**alpha) * (1 - alpha) - (K**alpha) * (L**(alpha-1)))

print("Second order partial derivative with respect to L=", second_partial_L2)
print("Second order partial derivative with respect to K=", second_partial_K2)


"""
This example defines the neoclassical_production function and calculates the quantity of labor (L) and
     value of the function using specific values for the amount of capital (K)
     Calculates (Y) and its partial derivatives. Also, second order partial derivatives
     Calculates (second_partial_L2 and second_partial_K2).

Whether the partial derivatives are positive or negative depends on whether the function is at the production level.
     explains the nature of change. Positive partial derivatives, additional input additional output
     negative second order partial derivatives per unit additional input
     indicates that additional output is decreasing.
"""


# A. 1 . a. COMPANIES  '

# Simple Example: A.5

# Companies: Profit of the Representative Company

"""
Planned nominal profit, revenue, per period and expressed in money
     is equal to the difference between labor and capital costs. equation here
     is as follows.

π = P * Y_S - w * N_D - i * B_S

π: Profit

P*Y_S : Revenue

w * N_D : Labor Cost

i * B_S : Represents the Cost of Capital, i.e. future interest payments.

It was designed as.

Here;

B_S: The company's planned debt, that is, the debt it plans to issue by the end of the repayment period.
         bond amount.
        
w : Real Wage

N_D : Labor Demand

P : Nominal Prices

Y_S : Output Amount

It is parameterized as .

"""

def planned_profit(P, Y_S, w, N_D, i, B_S):
     profit = P * Y_S - w * N_D - i * B_S
     return profit

# Parameters
P = 1.2 # Nominal prices
Y_S = 1000 # Output quantity
w = 20 # Real wage
N_D = 50 # Labor demand
i = 0.05 # Interest rate (cost of capital)
B_S = 200 # Planned debit

# Planned profit calculation
pi = planned_profit(P, Y_S, w, N_D, i, B_S)
print("Planned Profit =", pi)

# An example study

planned_profit(1.4, 1000, 21, 48, 0.04, 220)

"""
This example defines the planned_profit function and uses it with the given parameters.
     calculates the right side of the equation (finds the profit). Function in Python
     The def keyword is used to define it. Then, the function
     It calculates the planned profit by applying the equation given in and displays it on the screen.
     prints.
"""

# Simple Example: A.6

# Companies: Profit Maximization of the Representative Company

"""
While the representative firm tries to maximize its profit, in notation (1)
     Considering the production possibilities given by the neoclassical production function
     must receive:

Y= A * F(N,K) (1)

π = P * Y_S - w * N_D - i * B_S (5)

Changes in the capital stock during a single period are called investment.
     If K is the optimal equipment and K_0 is the equipment at the beginning of the period, investment is

I : K_1 - K_0 (6)

The representative firm finances its investment by issuing bonds:

(∆B_S) = P * I (7)

Notation (7) shows the difference between the required amount of capital goods and the price of the capital good.
     The investment amount equal to
     indicates that it will be provided.

✓ ∆B: It is the nominal change that will occur in debts throughout the period.

If notation (7) is rearranged,

I = (∆B_S) / P (8)

With the production functions (1) and (6), equation (7), profit (5)
     If it is substituted into the function, the following equation is obtained.

π = P * F(N,K) - w * N_D - i * [B_0 + P * (K_1 - K_0 ) ] (9)

π = P * F(N,K) - w * N_D - i * [B_0 + P * I] (9.1)

π = P * F(N,K) - w * N_D - i * [B_0 + ∆B_S ] (9.2)

π = P * F(N,K) - w * N_D - i * [B_0 + B_1 - B_0 ] (9.3)

π = P * F(N,K) - w * N_D - i * B_1 (9.4)

Note that the notation (9.4) is actually the notation number (5).
     should be done. Notations (9.1) and (9.4) contain proofs.

In equation (9), profit is actually a combination of only two variables, labor and capital.
      is a function, because these two determine the level of output.
      Therefore, profit maximization conditions are partial of the profit function.
      It consists of setting the derivatives equal to zero:

∂π / ∂N = [P * (∂F / ∂N)] - w = 0 (10)

∂π / ∂K = [P * (∂F / ∂K)] - i * P = 0 (11)

The solution of this system of equations is;

Optimal Labor Demand Condition: w = P * (∂F / ∂N) (12)
                                                
Optimal Capital Demand Condition: i = (∂F / ∂K) (13)
                                  
The term P * (∂F / ∂N),

     is called the marginal value productivity of labor and is
     It refers to the increase caused by a "small" increase in monetary revenue.

in (∂F/∂N)

     The term marginal physical product refers to the increase in physical output.

According to equations (12) and (13), in equilibrium, the marginal value of labor
     productivity depends on the nominal wage, and the marginal value productivity of capital depends on the interest rate.
     should be equal to the ratio.
"""

def firms(L, K, A, alpha, P, w, N_D, i, B_S, K_0, K_1):
     K = K_1 - K_0
     I = K_1 - K_0
     K = I
     Y = A * (K**alpha) * (L**(1-alpha))
     B_S = P * I
     pi = P * Y - w * N_D - i * (B_S) # Correction made
     marginal_N = A * alpha * (K**alpha) * (L**(alpha-1))
     marginal_K = A * (K**(alpha-1)) * (L**alpha) * (1 - alpha)
    
     w = P * marginal_N
     i = P * marginal_K # Correction made
    
     eq_10 = P * marginal_N - w
     eq_11 = P * marginal_K - i * P
    
     results = {
         'Output (Y)': Y,
         'Investment (I)': I,
         'Planned Profit (π)': pi,
         'Marginal Value Efficiency (N)': marginal_N,
         'Marginal Value Efficiency (K)': marginal_K,
         'Snow Max. Partial Derivative of the Function with Respect to Labor': eq_10,
         'Snow Max. Partial Derivative of the Function with Respect to Capital': eq_11,
         'Optimal Labor Demand': w,
         'Optimal Capital Demand': i,
         'Optimal Balance': w == i,
     }
    
     return results

# Parameters
L = 2.0 # Labor quantity
K = 3.0 # Amount of capital
A = 1.5 # Total factor productivity
alpha = 0.3 # Labor share parameter
P = 1.2 # Nominal prices
w = 20 # Real wage
N_D = 50 # Labor demand
i = 0.05 # Interest rate (cost of capital)
B_S = 200 # Planned debit
K_0 = 2.5 # Initial value of capital
K_1 = 3.5 # End value of capital

# Call the function and print the results to the screen
results = firms(L, K, A, alpha, P, w, N_D, i, B_S, K_0, K_1)
for key, value in results.items():
     print(f"{key} = {value}")

"Now let's run an example here for the profit maximization of the representative firm;"

firms(200, 300, 2, 0.4, 1.5, w, 500, i, 200, 0, 166.66)

"We did not write the values of w and i here because we are looking for balance."

"We will see the result when Optimal Balance gives TRUE or FALSE."

# Simple Example: A.7

# Companies: Labor Force and Marginal Productivity Relationship

"""
The firm determines the level of labor input by marginal productivity and the given real wage.
     shall determine the rate so as to equalize it; because, only in this case, profit
     will be maximum.

If the real wage rises, the marginal productivity of labor also rises.
     This means that the demand for labor will decrease. So the real wage
     As labor rate increases, labor demand decreases.
"""

import numpy as np
import matplotlib.pyplot as plt

def marginal_N(L, K, A, alpha):
     return A * alpha * (K**alpha) * (L**(alpha - 1))

def output(L_values, K, A, alpha):
     return A * (K**alpha) * (L_values**(1 - alpha))

# Fixed parameters
K = 3
A = 1
alpha = 0.9

# Variation range of labor usage
L_values = np.linspace(1, 10, 1000)

# Output and marginal productivity calculations
Y_values = output(L_values, K, A, alpha)
marginal_efficiency_values = marginal_N(L_values, K, A, alpha)

# Graphic drawing
plt.plot(L_values, Y_values, label="Output Amount")
plt.xlabel("Labor Usage (L)")
plt.ylabel("Output Amount")
plt.grid(True)
plt.title("Relationship between Labor Force Use and Output Amount")
plt.show()

"""
The effect of changes in interest rates on capital demand is similar.
     can be obtained as follows:
"""
        
import numpy as np
import matplotlib.pyplot as plt

def marginal_N(L, K, A, alpha):
     return A * alpha * (K**alpha) * (L**(alpha - 1))

def output(L, K, A, alpha):
     return A * (K**alpha) * (L**(1 - alpha))

# Fixed parameters
L = 2.0
A = 1.5
alpha = 0.3
K_values = np.linspace(2.0, 4.0, 100)

# Output (Y) calculations
output_values = output(L, K_values, A, alpha)

# Labor demand calculations
marginal_N_values = marginal_N(L, K_values, A, alpha)

# Graphic drawing
plt.plot(K_values, output_values, label="Output")
plt.xlabel("Amount of Capital")
plt.ylabel("Output Amount")
plt.legend()
plt.grid(True)
plt.title("Output and Labor Demand Relationship (Concave)")
plt.show()

# Simple Example: A.8

# Firms: Labor Demand Function and Capital Demand Function

"""
This section is based on the representative firm's labor demand function and capital demand function.
     We can summarize with.


         N_D = (W/P) (20)
                 (-)
        
        
             I = (i) (21)
                 (-)

"""

import numpy as np
import matplotlib.pyplot as plt

def real_wage(nominal_wage, price_level):
     return nominal_wage / price_level

def labor_demand(real_wage, wage_coefficient):
     return wage_coefficient / real_wage

# Fixed parameters
nominal_wage = 20
price_level = 1.2
wage_coefficient = 1000

# Real wage (w) calculations
w_values = np.linspace(10, 30, 100)
real_wage_values = real_wage(nominal_wage, w_values)

# Labor demand (N_D) calculations
labor_demand_values = labor_demand(real_wage_values, wage_coefficient)

# Graphic drawing
plt.plot(labor_demand_values, real_wage_values)
plt.xlabel("Labor Demand (N_D)")
plt.ylabel("Real Wage (w)")
plt.grid(True)
plt.title("Relationship between Real Wage and Labor Demand")
plt.show()

"""
In this code, the real_wage function calculates the real wage by dividing the nominal wage by the price level.
     calculates the fee. Then the labor_demand function, real wage and
     A simple model to show the negative relationship between labor demand
     It calculates labor demand by creating When you look at the graph, the real
     You can see that the demand for labor decreases as the wage increases.
"""

import numpy as np
import matplotlib.pyplot as plt

def capital_demand(interest_rate, capital_coefficient):
     return capital_coefficient / interest_rate

# Fixed parameters
interest_rate_values = np.linspace(0.01, 0.1, 100)
capital_coefficient = 1000

# Capital demand (C_D) calculations
capital_demand_values = capital_demand(interest_rate_values, capital_coefficient)

# Graphic drawing
plt.plot(capital_demand_values, interest_rate_values)
plt.xlabel("Capital Demand (C_V)")
plt.ylabel("Interest Rate (i)")
plt.grid(True)
plt.title("Capital Demand and Interest Rate Relationship")
plt.show()


"""
The two figures above show that any increase in the real wage increases labor demand;
     Any increase in the interest rate reduces the demand for capital.
     shows.
"""

# Simple Example: A.9

# Companies: Production Function and Goods Supply Function

"""
In addition to equations (20) and (21), the demand for financial capital or equivalent
     As such, there is a supply of bonds. It should be remembered that someone offering bonds is a financial
     It means that it demands capital, that is, money; Therefore, with the demand for capital
     The supply of bonds is identical.
    
The capital stock does not change in the current period, or in other words, new capital
     A period of time is required to install the hardware. In this case, current production
     depends only on the initial capital stock and labor force level, while the new
     The impact of capital goods will not appear until the following period.
    
So, depending on our assumption, the production function;

                     Y = f(N) (22)

We can write it as . Because now the only variable factor affecting current production is
     is the workforce. On the other hand, while investment creates a demand effect in the current period,
     Does not produce any capacity effect; monitoring production capacity
     It is not possible to increase before the due date.
    
According to equation (22), current production depends only on labor, and labor depends on real wages.
     depends on the rate.
    
When we combine equations (20) and (22), we get the firm's goods supply function
     we get.
    
                 Y_S = Y_S * (W/P) (23)
                              (-)
                     
If the real wage rate rises, the demand for labor and therefore the supply of goods decreases.
     will decrease. However, the supply of goods does not depend on the interest rate.
     It is true that the interest rate will affect investment; However, the capacity of the investment
     Since we do not take into account the effect of
     will have no effect.

"""

import numpy as np
import matplotlib.pyplot as plt

def current_output(labor):
     return 10 + 2 * labor # A simple linear function

# Creating workforce level (N) values
labor_values = np.linspace(0, 10, 100)

# Current production (Y) calculations
current_output_values = current_output(labor_values)

# Graphic drawing
plt.plot(labor_values, current_output_values)
plt.xlabel("Workforce Level (N)")
plt.ylabel("Current Production (Y)")
plt.grid(True)
plt.title("Relationship between Current Production and Labor Force Level")
plt.show()

"""
This graph shows that the labor force level has a positive relationship with current production.
     shows that it is. As the labor force level increases, current production also increases (linear).
"""

import numpy as np
import matplotlib.pyplot as plt

def supply_output(real_wage, labor):
     return labor / real_wage # Real wage rate (w) divided by labor (N)

# Creating real wage rate (w) values
real_wage_values = np.linspace(1, 10, 100)

# Labor level (N)
labor = 2

# Current production (Y_S) calculations
supply_output_values = supply_output(real_wage_values, labor)

# Graphic drawing
plt.plot(supply_output_values, real_wage_values)
plt.xlabel("Current Production (Y_S)")
plt.ylabel("Actual Wage Rate (w)")
plt.grid(True)
plt.title("Real Wage Rate and Current Production Relationship")
plt.show()

"""
According to this graph, as the real wage rate (w) increases, current production (Y_S) also decreases.
     There appears to be a negative relationship between the two variables.
     As the real wage rate (w) increases, current production (Y_S) also decreases.
"""

# A. 1 . b. HOUSEHOLD


"""
✓Households earn labor income, interest income and profit income in a certain period.

     P * Y = w * N_S + i * B_D + π (24)

P.Y. ; The product of a period's price level and physical output is total nominal income.

     π = P * Y - w * N_S - i * B_D (25)

It allocates a part of the household's real income to consumption and a part to savings.

     Y = C + S ; S = (∆B_D) / P (26)

In this equation, C is real consumption and S is real savings, that is, real bond demand.
      Represent. This equation puts the consumer in balance between his income and spending.
      It is called a budget constraint because it forces the budget constraint to be set.
"""

def household_model(N_S, B_D, Y, w, i, P):
     # Eq. 24: Total nominal income
     total_nominal_income = P * Y

     # Eq. 25: Profit income
     pi = total_nominal_income - w * N_S - i * B_D

     # Eq. 26: Consumption and savings
     C = Y - (B_D / P)
     S = (B_D/P)

     results = {
         'Total Nominal Income': total_nominal_income,
         'Profit Income': pi,
         'Real Consumption': C,
         'Real Savings': S
     }

     return results

"""
Using the given equations, calculate the total nominal income (24), profit income
     (25), a function that calculates real consumption and real savings (26)
     We write. Then, it calls the model by entering the parameters and displays the results.
     We print to the screen.
"""

# Parameters
N_S = 50 # Labor income
B_D = 100 # Interest income
Y = 300 # Total income
w = 20 # Real wage
i = 0.05 # Interest rate
P = 1.2 # Price level

# Call the model and print the results to the screen
results = household_model(N_S, B_D, Y, w, i, P)
for key, value in results.items():
     print(f"{key}: {value}")

"""
While the household decides how much labor to supply, it
     It measures the losses caused by giving up leisure time against the benefits.
     The classics explained this with the theory of cardinal utility.
    
Cardinal utility theory considers utility, at least in principle, to be measurable.
     sees it in terms of quantity, and marginal benefit is the last “small” amount of a given good.
     It is nothing but the benefit obtained from the consumption of its unit.
    
Representatives of the theory of marginal utility argue that the intensity of desire decreases
     empirical observation showing that, as consumption increases, marginal benefit
     decreases.

The marginal benefit of consumption – although always positive – gradually decreases.

"""

import matplotlib.pyplot as plt
import numpy as np

# Marginal utility function (I. Gossen's Law)
def marginal_utility(x):
     return 1 / np.sqrt(x)

# Consumption amount range
x_range = np.linspace(0.1, 10, 100)

# Marginal utility values
marginal_utilities = marginal_utility(x_range)

# Income calculation based on consumption amount
income = np.cumsum(marginal_utilities)

# Graphic drawing
plt.plot(x_range, income, label='Utility Function (I. Gossen's Law)')
plt.xlabel('Consumption')
plt.ylabel('Income')
plt.title('I. Gossen's Law: Marginal Utility and Income Relationship')
plt.legend()
plt.grid(True)
plt.show()

"""
Unlike goods, labor is a necessity because it requires giving up free time.
     It is assumed to create dissatisfaction. Leisure time is different from other goods
     Since it does not exist and therefore has diminishing marginal utility,
     While the labor supply increases (i.e., leisure time decreases), the marginal demand for labor
     dissatisfaction increases.
    
At a given real wage rate W⁄P, a household supplies additional labor of ∂N_S;

     ∂Y = (W⁄P) * ∂N_S (27)

It obtains additional real labor income equal to equation (27). Total labor supply and
     When total labor income is small, the marginal benefit of income is high, labor
     marginal dissatisfaction will be low. This commonly includes households,
     until the marginal dissatisfaction of labor and the marginal benefit of income are balanced.
     will gradually increase the labor supply. This point is for the household
     is optimal.
    
If the given real wage rate rises, there will be a surplus added to the labor force for each working hour.
     As more goods are paid for, the marginal benefit of labor income will also increase
     and labor supply will increase until a new optimum is reached.
 
Therefore, marginal utility theory suggests that high wages lead to high labor supplies.
     and from here the classical labor supply function
     can derive.

     Classical Labor Supply: N_S = N_S * (W⁄P) (28)
                                            (+)
                                           
"""
import matplotlib.pyplot as plt
import numpy as np

# Relationship between real wage rate (W/P) increase and labor supply (N_S)
def labor_supply(W_over_P):
     return W_over_P

# Real wage rate range
W_over_P_range = np.linspace(0, 10, 100)

# Labor supply values
labor_supply_values = labor_supply(W_over_P_range)

# Graphic drawing
plt.plot(labor_supply_values, W_over_P_range, label='N_S')
plt.plot(W_over_P_range, W_over_P_range, 'r--', label='45 Degree Curve')
plt.xlabel('Labor Supply (N_S)')
plt.ylabel('Real Wage Rate (W/P)')
plt.title('Classical Labor Supply')
plt.legend()
plt.grid(True)
plt.show()
     
import matplotlib.pyplot as plt
import numpy as np

# Savings function
def saving(i):
     return i

# Interest rate range
i_range = np.linspace(0, 10, 100)

# Savings values
saving_values = saving(i_range)

# Graphic drawing
plt.plot(i_range, saving_values, label='S')
plt.plot(i_range, i_range, 'r--', label='45 Degree Curve')
plt.ylabel('Interest Rate (i)')
plt.xlabel('Savings (S)')
plt.title('Relationship between Savings and Interest Rate')
plt.legend()
plt.grid(True)
plt.show()

"""
An increase in the real wage has two effects.

Substitution Effect; When the wage rate rises, leisure becomes more expensive and
     This leads to households demanding less free time.
    
Income Effect; households obtain more goods and free time.
     So even though household costs have risen, households have increased their free time.
     has the power to sustain. Even more free time than before
     It is even possible that it will consume more, that is, reduce the labor supply.
        
Firms invest to make a profit in the future, but how much do they save?
     Households mainly decide what to do and do this based on their income.
     They do it to spread it over time, to earn interest or to leave an inheritance.
    
Withdrawal interest rate; One of the classical explanations of savings and interest and
     It was probably the most important. According to this theory, the household's current consumption
     future consumption, in general, in addition to wanting to avoid risk
     prefers for subjective reasons; households, the interest rate is the only way to wait
     saving when it is high enough to balance the sacrifice and risk involved
     It does.
    
Considering the marginal utility theory, household savings
     to the point where the marginal benefit of waiting balances the dissatisfaction of waiting.
     will increase by . An increase in the interest rate at a certain level
     increases the marginal benefit of saving and thus makes the household more
     leads to more savings.

Savings are only a function of the interest rate and increase as interest increases;

             S = S.(i) (29)
                   (+)

This notation indicates that as the interest rate rises, households will consume less.
     It does. This is because total income remains almost the same and households
     must reduce consumption in order to save more
     is that it is.

"""
import matplotlib.pyplot as plt
import numpy as np

# Savings function
def saving(i):
     return i

# Interest rate range
i_range = np.linspace(0, 10, 100)

# Savings values
saving_values = saving(i_range)

# Graphic drawing
plt.plot(i_range, saving_values, label='S')
plt.plot(i_range, i_range, 'r--', label='45 Degree Curve')
plt.ylabel('Interest Rate (i)')
plt.xlabel('Savings (S)')
plt.title('Relationship between Savings and Interest Rate')
plt.legend()
plt.grid(True)
plt.show()

"""

In this chart, consumption (C) values start from 0 and interest rate (i) values start from 0.
     It varies from 0 to 10. As we see in the chart, consumption
     increases, the interest rate decreases, indicating a negative relationship.
     shows.
"""

"""
According to classical theory, the representative household earns income from labor, interest and profit.
     He decides on labor and interest income; Profit income of companies
     depends on its profitability.
    
Depending on the specific assumptions of marginal utility theory; real with labor
     There is a positive relationship between wages and savings and the interest rate. This
     On the other hand, as the interest rate increases, consumption decreases.
    
The household makes its plans under the budget constraint numbered (26). This budget constraint;

     P * C + P * S = w * N_S + i * (B_0 + P * S) + π (31)

On the left side of the equation are two possible uses of income: consumption and saving.
     while taking;

             B_D = B_0 + P * S (32)

The sum of the initial bond stock and current savings is the amount planned for the end of the period
     is equal to the stock of bonds, and interest income arises from this planned stock.


"""

import matplotlib.pyplot as plt
import numpy as np

# Labor supply function
def labor_supply(w):
     return 100 + 0.5 * w

# Savings function
def savings(i):
     return 50 + 0.2 * i

# Consumption function
def consumption(i):
     return 200 - 0.3 * i

# Real wage and interest rate ranges
w_values = np.linspace(0, 10, 100)
i_values = np.linspace(0, 10, 100)

# Drawing graphics
plt.figure(figsize=(10, 6))

# Labor supply vs real wage graph
plt.subplot(2, 2, 1)
plt.plot(w_values, labor_supply(w_values))
plt.xlabel('Real Wage (w)')
plt.ylabel('Labor Supply (N_S)')
plt.title('Labor Supply - Real Wage Relationship')

# Savings - Interest chart
plt.subplot(2, 2, 2)
plt.plot(i_values, savings(i_values))
plt.xlabel('Interest Rate (i)')
plt.ylabel('Save (S)')
plt.title('Savings - Interest Relationship')

# Consumption - Interest graph
plt.subplot(2, 2, 3)
plt.plot(i_values, consumption(i_values))
plt.xlabel('Interest Rate (i)')
plt.ylabel('Consumption (C)')
plt.title('Consumption - Interest Relationship')

# Budget Constraint chart
C_values = consumption(i_values)
S_values = savings(i_values)
N_S_values = labor_supply(w_values)
B_0 = 100
P = 1
pi = 50
budget_constraint = P * C_values + P * S_values - w_values * N_S_values - i_values * (B_0 + P * S_values) - pi
plt.subplot(2, 2, 4)
plt.plot(i_values, budget_constraint)
plt.xlabel('Interest Rate (i)')
plt.ylabel('Budget Constraint')
plt.title('Budget Constraint')

plt.tight_layout()
plt.show()

"""
As an example, let's use the following hypothetical functions and parameters:

1. Labor supply function:
    
     (N_S = 100 + 0.5 * w) (hypothetical relationship, as real wage increases
                                  indicates an increase in labor supply)

2. Saving function:
     (S = 50 + 0.2 * i) (hypothetical relationship, as the interest rate increases
                               indicates that savings have increased)

3. Consumption function:
     (C = 200 - 0.3 * i) (hypothetical relationship, as the interest rate increases
                                indicates that consumption has decreased)

4. Other parameters:
     (P = 1), (B_0 = 100), (pi = 50), (w) and (i)
     represents real wages and interest rates.

It is possible to plot these plots using the Matplotlib library.

This code examines labor supply - real wage, savings - interest and consumption - interest relations.
     shows with graphics. It also visualizes the budget constraint.

"""

# A. 2. LABOR MARKET

"""
From the classical perspective, equalization of labor supply and demand leads to full employment and
     gives the equilibrium real wage rate.
    
N_D * (W/P) = N = N_S * (W/P) (33)

 
Firms' and households' plans can only be adjusted by the equilibrium real wage rate in the market.
     Compatible if (W/P) prevails; In this case, labor demands
     all will be covered and all households will be able to sell their labor.
"""

“Let's make a case for market imbalance.”

import matplotlib.pyplot as plt

# Constants
a = 3000
b = 200
c = 1000
d = 100

# Real wage rate (W/P)
W_P = range(0, 11)

# Labor demand (N_D)
N_D = [a - b * x for x in W_P]

# Labor supply (N_S)
N_S = [c + d * x for x in W_P]

# Graphic drawing
plt.plot(N_D, W_P, label='Labor Demand (N_D)')
plt.plot(N_S, W_P, label='Labor Supply (N_S)')
plt.xlabel('Amount of Labor (N)')
plt.ylabel('Real Wage Rate (W/P)')
plt.axvline(x=2000, color='red', linestyle='--', label='N*')
plt.axhline(y=5, color='green', linestyle='--', label='(W/P)*')
plt.legend()
plt.grid(True)
plt.show()

"The equilibrium representation of the market is as follows."

import matplotlib.pyplot as plt

# Real wage rate (W/P)
W_P = range(0, 21)

# Labor demand (N_D)
N_D = [4000 - 100 * x for x in W_P]

# Labor supply (N_S)
N_S = [2000 + 100 * x for x in W_P]

# Graphic drawing
plt.plot(N_D, W_P, label='Labor Demand (N_D)')
plt.plot(N_S, W_P, label='Labor Supply (N_S)')
plt.xlabel('Amount of Labor (N)')
plt.ylabel('Real Wage Rate (W/P)')
plt.axvline(x=3000, color='red', linestyle='--', label='N*')
plt.axhline(y=10, color='green', linestyle='--', label='(W/P)*')
plt.legend()
plt.grid(True)
plt.show()

"If we want to perform a function related to the labor market;"
def workforce_piyasasi_dengeleme(W_P):
     # Labor demand (N_D)
     N_D = 4000 - 100 * W_P
    
     # Labor supply (N_S)
     N_S = 2000 + 100 * W_P
    
     if N_D == N_S:
         return "Equilibrium has been established in the labor market. The market has been cleared."
     elif N_D >= N_S:
         return "Equilibrium has not been established in the labor market. There is a demand for labor in the market."
     else:
         return "Equilibrium has not been established in the labor market. There is a lack of labor supply in the market."

# Real wage rate (W/P)
W_P = 11

# Call the function and print the result
result = isgucu_piyasasi_dengeleme(W_P)
print(result)

workforce_piyasasi_dengeleme(12)