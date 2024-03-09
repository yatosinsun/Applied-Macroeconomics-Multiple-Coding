%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ECONMATIC - Stage I : Macroeconomics 

% Genç Ekonomistler Kulübü

% Owner : Yasin Tosun / Siegen University 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
####################### ##########################
  %% I. NEOCCLASSICAL ECONOMICS
####################### ##########################
%}

% *Simple Example-1: Classical Employment and Production Theory*

%{

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
%}

N = 100; % amount of labor
K = 50; % amount of capital
A = 2; % efficiency level

Y = total_production(N, K, A);

disp(Y);

function Y = total_production(N, K, A)
     Y = A * F(N, K);
end

function F = F(N, K)
     % Here you can define the function that depends on the degree of effective use of the factor inputs
     F = N^0.5 * K^0.5;
end

%{

In these codes, the total_production function is defined with factor inputs N and K.
     Calculates total real production (Y) using productivity level A.
     The F function depends on the degree of effective use of factor inputs.
     It makes calculations as . Then, by assigning the values N, K, and A
     We calculate the total real production and display the result on the screen or console.
     We print.

%}

% *Simple Example-2: Neoclassical Production Function (Labor and Output Relationship)*


%{
In Figure 1, given the level of capital, the difference between the level of labor and output is
     relationship is seen. This neoclassical production function has the following properties:
     exhibits:
        
✓ The curve starts from the origin.
✓ Its slope is always positive.
✓ However, it gradually becomes smaller along the range.

%}


A = 1.0; % total factor productivity
alpha = 0.4; % Labor share parameter
L = linspace(0, 10, 100); % Labor quantity range
K = 5; % amount of fixed capital

Y = F(L, A, alpha, K); % Blue graph calculation

A_1 = 1.0; % total factor productivity
alpha_1 = 0.8; % Labor share parameter
L_1 = linspace(0, 10, 100); % Labor quantity range
K_1 = 5; % amount of fixed capital

Y_1 = F(L_1, A_1, alpha_1, K_1); % Orange chart calculation

plot(L, Y, 'b', L_1, Y_1, 'r', 'LineWidth', 2)
xlabel('Labor Force (L)')
ylabel('Output (Y)')
title('Neoclassical Production Function')
legend('Blue Graphic', 'Orange Graphic')

function Y = F(L, A, alpha, K)
     Y = A * (K^alpha) * (L.^(1-alpha));
end

% *Simple Example-3: Neoclassical Production Function (Labor and Output Relationship)*

% Labor Demand Line and Labor Marginal Productivity Line

%{
Labor demand line D_N is also the labor marginal productivity line
     Same as MP_N is true. In the neoclassical production function, the amount of labor
     We can say that as labor increases, the marginal product of labor decreases.
%}

A = 1.0; % total factor productivity
alpha = 0.4; % Labor share parameter
L = linspace(0, 10, 100); % Labor quantity range
K = 5; % amount of fixed capital

YY = A .* (K^alpha) .* (L.^(1-alpha)); % Labor demand line
MP_N = alpha * A .* (K^alpha) .* (L.^(alpha-1)); % Labor marginal productivity line

plot(L, YY, 'LineWidth', 2)
hold on
plot(L, MP_N, '--', 'LineWidth', 2)
hold off

xlabel('Labor Force (L)')
ylabel('Output (Y) / Marginal Product (MP_N)')
title('Labor Demand Line and Labor Marginal Productivity Line')
legend('Labor Demand Line', 'Labor Marginal Productivity Line')

% Simple Example: 4

% Partial Derivatives of the Neoclassical Production Function


%{
The partial derivatives of the neoclassical production function are strictly positive:
             Each additional input creates additional output.
         Second order partial derivatives are negative:
             Additional output per unit additional input decreases.
%}

L = 2.0; % amount of labor
K = 3.0; % amount of capital
A = 1.5; % total factor productivity
alpha = 0.3; % Labor share parameter

% Function value
Y = A * (K^alpha) * (L^(1-alpha));
disp(['Function value Y = ', num2str(Y)]);

% Partial derivatives
partial_derivative_L = A * alpha * (K^alpha) * (L^(alpha-1));
partial_derivative_K = A * (K^(alpha-1)) * (L^alpha) * (1 - alpha);

disp(['Partial derivative by L' = ', num2str(partial_derivative_L)]);
disp(['Partial derivative by K' = ', num2str(partial_derivative_K)]);

% Second order partial derivatives
second_partial_L2 = A * alpha * (alpha - 1) * (K^alpha) * (L^(alpha-2));
second_partial_K2 = A * (alpha * (K^(alpha-1)) * (L^alpha) * (1 - alpha) - (K^alpha) * (L^(alpha-1)));

disp(['Second order partial derivative with respect to L' = ', num2str(second_partial_L2)]);
disp(['Second order partial derivative by K' = ', num2str(second_partial_K2)]);

%{
In MATLAB, the function keyword is used to define a function.
     is used. The disp command is used to print the results on the screen.
     We convert the values to text with num2str and print them on the screen.

In this way, we obtain the partial derivatives of the neoclassical production function and the second
     You can obtain order partial derivatives in MATLAB.
%}

% Simple Example: 5

% Companies: Profit of the Representative Company

%{
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

B_S: The company's planned debt, that is, to remove it until the end of the repayment period.
         is the planned bond amount.
        
w : Real Wage

N_D : Labor Demand

P : Nominal Prices

Y_S : Output Amount

It is parameterized as .

%}

%{

% Profit Function

function profit = planned_profit(P, Y_S, w, N_D, i, B_S)
     profit = P * Y_S - w * N_D - i * B_S;
end
%}

% Parameters
P = 1.2; % Nominal prices
Y_S = 1000; % output amount
w = 20; % real wage
N_D = 50; % Labor demand
i = 0.05; % Interest rate (cost of capital)
B_S = 200; % planned debt

% planned profit calculation
profit = P * Y_S - w * N_D - i * B_S;
disp(['Planned Profit = ', num2str(profit)]);

%{
This code takes action directly without defining a function and calculates the planned profit.
     accounts. In this code, all operations are performed within the main code.

If you can calculate the planned profit directly without defining a function
     If you want, you can use it as above.
%}

% Simple Example: 6

% Companies: Profit Maximization of the Representative Company

%{
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

%}

% Define the input parameters
L = 2.0;
K = 3.0;
A = 1.5;
alpha = 0.3;
P = 1.2;
w = 20;
N_D = 50;
i = 0.05;
B_S = 200;
K_0 = 2.5;
K_1 = 3.5;

% Calculate intermediate variables
K = K_1 - K_0;
I = K_1 - K_0;
K = I;
K_D = K
Y = A * (K^alpha) * (L^(1-alpha));
B_S = P * I;
pi = P * Y - w * N_D - i * B_S;
marginal_N = A * alpha * (K^alpha) * (L^(alpha-1));
marginal_K = A * (K^(alpha-1)) * (L^alpha) * (1 - alpha);

optimal_N = P * marginal_N;
optimal_K = P * marginal_K;

eq_10 = P * marginal_N - w;
eq_11 = P * marginal_K - i * P;

% Calculate marginal revenue and marginal cost FOR LABOR
marginal_revenue = P * marginal_N * N_D;
marginal_cost = w * N_D;

% Calculate marginal revenue and marginal cost FOR CAPITAL
capital_marginal_revenue = P * marginal_K * K_D;
capital_marginal_cost = i * K_D;

% Display the results
disp(['Output (Y) = ', num2str(Y)]);
disp(['Investment (I) = ', num2str(I)]);
disp(['Planned Profit (π) = ', num2str(pi)]);
disp(['Marginal Value Efficiency (N) = ', num2str(marginal_N)]);
disp(['Marginal Value Efficiency (K) = ', num2str(marginal_K)]);
disp(['Optimal Labor Demand = ', num2str(optimal_N)]);
disp(['Optimal Capital Demand = ', num2str(optimal_K)]);
disp(['Marginal Revenue = ', num2str(marginal_revenue)]);
disp(['Marginal Cost = ', num2str(marginal_cost)]);
disp(['Marginal Revenue of Capital = ', num2str(capital_marginal_revenue)]);
disp(['Marginal Cost of Capital = ', num2str(capital_marginal_cost)]);
disp(['Optimal Balance = ', num2str(eq_10 == eq_11)]);

% Check and display the conditions for labor
if marginal_revenue == marginal_cost
     disp('Maximum profit point and balance in terms of labor');
elseif marginal_revenue > marginal_cost
     disp('Marginal productivity of labor will decrease');
else
     disp('Marginal productivity of labor will increase');
end

% Check and display the conditions for capital
if capital_marginal_revenue == capital_marginal_cost
     disp('Maximum profit point and balance in terms of capital');
elseif capital_marginal_revenue > capital_marginal_cost
     disp('Marginal productivity of capital will decrease');
else
     disp('Marginal productivity of capital will increase');
end