# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# % ECONMATIC - Stage I : Macroeconomics 

# % Genç Ekonomistler Kulübü

# % Owner : Yasin Tosun / Siegen University 

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

####################### ##########################
# I : NeoClassical Economics
####################### ##########################

# Simple Example: 3

# Classical Theory of Employment and Production

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

function total_production(N, K, A)
     Y = A * F(N, K)
     return Y
end

function F(N, K)
     # Here you can define the function that depends on the degree of effective use of factor inputs
     F = N^0.5 * K^0.5
     return F
end

N=100# Labor quantity
K = 50# Capital amount
A = 2 # Efficiency level

Y = total_production(N, K, A)

println(Y)

"""
This code determines the total real value depending on the factor inputs and the degree of effective use.
     calculates production. F function, effective use of factor inputs
     It makes calculations depending on the degree. Then, N, K and A
     We calculate the total real production by assigning the values and display the result on the screen.
     We print.
"""

# Simple Example: 2

# Neoclassical Production Function (Labor and Output Relationship)

"""
In Figure 1, given the level of capital, the difference between the level of labor and output is
     relationship is seen. This neoclassical production function has the following properties:
     exhibits:
        
✓ The curve starts from the origin.
✓ Its slope is always positive.
✓ However, it gradually becomes smaller along the range.

"""

" ✓ IMPORTANT NOTE "

"""
We can use `Pkg` module to install packages in Julia language. The following
     We can install the Plots package by following the steps:

1. Open Julia's command line.
2. Press `]` to switch to package management mode.
3. Install the Plots package by entering the `add Plots` command.
4. Exit the package installation mode by pressing the Backspace key.

Below is an example Julia session representing these steps:

julia > # Open Julia's command line

julia > ] # Switch to package management mode

(@v1.6) pkg > add Plots # Install the Plots package

(@v1.6) pkg > # Exit package management mode

julia > using Plots # You can draw using the Plots package


After installing the Plots package, we can run the previous Julia code again.

"""
]
add Plots
"Press the backspace key"
  
using Plots

A = 1.0 # Total factor productivity
alpha = 0.4 # Labor share parameter
L = range(0, stop=10, length=100) # Labor quantity range
K = 5 # Amount of fixed capital

Y = A .* (K^alpha) .* (L.^(1-alpha)) # Blue graph calculation

A_1 = 1.0 # Total factor productivity
alpha_1 = 0.8 # Labor share parameter
L_1 = range(0, stop=10, length=100) # Labor quantity range
K_1 = 5 # Fixed capital amount

Y_1 = A_1 .* (K_1^alpha_1) .* (L_1.^(1-alpha_1)) # Orange chart calculation

plot(L, Y, label="Blue Plot")
plot!(L_1, Y_1, label="Orange Graph", xlabel="Labor (L)",
       ylabel="Output (Y)", title="Neoclassical Production Function", linewidth=4)

# Graph drawing operations
savefig ("NeoClassical Production Function.png")

"""
When you call the savefig function, the current graphic follows the savefig command.
     Saves to the file specified with the file path and name.

In addition, according to the savefig function, the extension of the graphic file you saved
     You can provide different file formats. For example, savefig("my_plot.pdf")
     You can save the chart in PDF format by specifying:

When you want to save the chart in a different format, change the file extension
     You can change it and save it in the format you want. Other supported
     Formats include JPG, PNG, SVG, EPS and others.

The graphic file you save will be saved in the directory where Julia is running.
     If you want to save to another directory, type the exact file path.
     You must specify.
    
For example, savefig("C:\Users\HP\NeoClassical Production Function.png")
     you can use a full file path.
    
"""

# Simple Example: 3

# Labor Demand Line and Labor Marginal Productivity Line

"""
Labor demand line D_N is also the labor marginal productivity line
     Same as MP_N is true. In the neoclassical production function, the amount of labor
     We can say that as labor increases, the marginal product of labor decreases.
"""

using Plots

A = 1.0 # Total factor productivity
alpha = 0.4 # Labor share parameter
L = range(0, stop=10, length=100) # Labor quantity range
K = 5 # Amount of fixed capital

Y = A .* (K^alpha) .* (L.^(1-alpha)) # Labor demand line
MP_N = alpha * A .* (K^alpha) .* (L.^(alpha-1)) # Labor marginal productivity line

plot(L, Y, label="Labor Demand Line")
plot!(L, MP_N, label="Labour Marginal Productivity Line", linestyle=:dash)
xlabel!("Labour (L)")
ylabel!("Output (Y) / Marginal Product (MP_N)")
title!("Labor Demand Line and Labor Marginal Productivity Line")

savefig("Labor Demand Line and Labor Marginal Productivity Line.png")


# Simple Example: 4

# Partial Derivatives of the Neoclassical Production Function


"""
The partial derivatives of the neoclassical production function are strictly positive:
             Each additional input creates additional output.
         Second order partial derivatives are negative:
             Additional output per unit additional input decreases.
"""

function neoclassical_production(L, K, A, alpha)
     Y = A * (K^alpha) * (L^(1-alpha))
     return Y
end

L = 2.0 # Labor quantity
K = 3.0 # Amount of capital
A = 1.5 # Total factor productivity
alpha = 0.3 # Labor share parameter

# Function value
Y = neoclassical_production(L, K, A, alpha)
println("Function value Y = = Y)

# Partial derivatives
partial_derivative_L = A * alpha * (K^alpha) * (L^(alpha-1))
partial_derivative_K = A * (K^(alpha-1)) * (L^alpha) * (1 - alpha)

println("Partial derivative with respect to L=", partial_derivative_L)
println("Partial derivative with respect to K=", partial_derivative_K)

# Second order partial derivatives
second_partial_L2 = A * alpha * (alpha - 1) * (K^alpha) * (L^(alpha-2))
second_partial_K2 = A * (alpha * (K^(alpha-1)) * (L^alpha) * (1 - alpha) - (K^alpha) * (L^(alpha-1)))

println("Second order partial derivative with respect to L=", second_partial_L2)
println("Second order partial derivative with respect to K=", second_partial_K2)


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

# Simple Example: 5

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

function planned_profit(P, Y_S, w, N_D, i, B_S)
     profit = P * Y_S - w * N_D - i * B_S
     return profit
end

# Parameters
P = 1.2 # Nominal prices
Y_S = 1000 # Output quantity
w = 20 # Real wage
N_D = 50 # Labor demand
i = 0.05 # Interest rate (cost of capital)
B_S = 200 # Planned debit

# Planned profit calculation
pi = planned_profit(P, Y_S, w, N_D, i, B_S)
println("Planned Profit =", pi)

# An example study

planned_profit(1.4, 1000, 21, 48, 0.04, 220)

"""
This example defines the planned_profit function and uses it with the given parameters.
     calculates the right side of the equation (finds the profit). Function in Python
     The def keyword is used to define it. Then, the function
     It calculates the planned profit by applying the equation given in and displays it on the screen.
     prints.
"""

# Simple Example: 6

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
    
From a profit maximization perspective, employing additional labor
     It will only be meaningful if marginal revenue is greater than cost.
    
Marginal Revenue: P * (∂F/∂N) *∂N_D > Marginal Cost: w * ∂N_D (14)
 

As long as this condition is valid, revenue will increase more than cost,
     It is beneficial for the representative firm to increase its labor demand. Neoclassical
     According to the production function assumption, marginal productivity decreases. Therefore,
     When the demand for labor increases, the marginal productivity of labor will decrease and
     Eventually the equilibrium point will be reached.
    
Marginal Revenue: P * (∂F/∂N) *∂N_D = Marginal Cost: w * ∂N_D (15)

This is the maximum profit point in terms of labor. If the company employs labor force
      If he wants to increase it further, marginal cost is constant and marginal revenue is
      Since it is decreasing (due to decreasing marginal productivity), profit will decrease.
      The point where marginal cost equals marginal revenue is optimal.

To summarize;

If Marginal Revenue = Marginal Cost;
     It is at maximum profit point and balance in terms of labor force.

If Marginal Revenue > Marginal Cost;
     The marginal productivity of the workforce will decrease.

If Marginal Revenue < Marginal Cost;
     The marginal productivity of the workforce will increase.

The reason for the increase in cost is the interest on the loan taken to finance the investment.
     If one starts with zero capital stock and gradually increases the capital,
     Initially, marginal revenue will be greater than marginal cost; however
     Given prices, marginal cost is constant, while marginal
     revenue will gradually decrease.

S. Marginal Revenue: P * (∂F/∂K) *∂K_D = S. Marginal Cost: i * ∂K_D (16)

decreases until it reaches equality. This is the optimality condition for the capital stock.
     We reach the final goal of our model using maximization conditions.
     We can direct.

     To summarize;

     If Marginal Revenue of Capital = Marginal Cost of Capital;
          It is at the maximum profit point and balance in terms of capital.
     
     If Marginal Revenue of Capital > Marginal Cost of Capital;
          The marginal productivity of capital will decrease.
     
     If Marginal Revenue of Capital < Marginal Cost of Capital;
          The marginal efficiency of capital will increase.
     
     """
     
     function firms(L, K, A, alpha, P, w, N_D, i, B_S, K_0, K_1)
          K = K_1 - K_0
          I = K_1 - K_0
          K_D = I
          Y = A * (K^alpha) * (L^(1-alpha))
          B_S = P * I
          pi = P * Y - w * N_D - i * B_S
          marginal_N = A * alpha * (K^alpha) * (L^(alpha-1))
          marginal_K = A * (K^(alpha-1)) * (L^alpha) * (1 - alpha)
         
          optimal_N = P * marginal_N
          optimal_K = P * marginal_K
         
          marginal_revenue = P * marginal_N * N_D
          marginal_cost = w * N_D
         
          capital_marginal_revenue = P * marginal_K * K_D
          capital_marginal_cost = i * K_D
         
          eq_10 = P * marginal_N - w
          eq_11 = P * marginal_K - i * P
         
          results = Dict("Output (Y)" => Y,
                         "Investment (I)" => I,
                         "Planned Profit (π)" => pi,
                         "Marginal Value Efficiency (N)" => marginal_N,
                         "Marginal Value Efficiency (K)" => marginal_K,
                         "Optimal Labor Demand" => optimal_N,
                         "Optimal Capital Demand" => optimal_K,
                         "Marginal Revenue" => marginal_revenue,
                         "Marginal Cost" => marginal_cost,
                         "Capital Marginal Revenue" => capital_marginal_revenue,
                         "Marginal Cost of Capital" => capital_marginal_cost,
                         "Optimal Balance" => eq_10 == eq_11,
                         "Maximum Profit Point and Equilibrium in Terms of Labor" => marginal_revenue == marginal_cost,
                         "Marginal Productivity of Labor Will Decrease" => marginal_revenue > marginal_cost,
                         "Marginal Productivity of Labor Will Increase" => marginal_revenue < marginal_cost,
                         "Maximum Profit Point and Equilibrium in Terms of Capital" => capital_marginal_revenue == capital_marginal_cost,
                         "Marginal Efficiency of Capital Will Decrease" => capital_marginal_revenue > capital_marginal_cost,
                         "Marginal Efficiency of Capital Will Increase" => capital_marginal_revenue < capital_marginal_cost)
         
          return results
     end
     
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
     for (key, value) in results
          println("$key = $value")
     end
     
     
     "Now let's run an example here for the profit maximization of the representative firm;"
     
     firms(200, 300, 2, 0.4, 1.5, 20, 500, 0.05, 200, 0, 166.66)