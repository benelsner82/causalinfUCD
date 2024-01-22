




## Simple Regression and the Conditional Expectation Function
We will ignore causality for the moment. We are simply interested in a **relationship between two variables $X_i$ and $y_i$** in a population $i=1,\dots, N$
\vfill
General notation for a \brf{model that relates $X_i$, $y_i$ and $e_i$}
\begin{equation}
y_i=f(X_i,e_i)
\label{eq1}
\end{equation}
\vfill
$X_i$ can include one or more explanatory variables\\
$e_i$ summarizes other factors that explain $y_i$
\vfill
On the following slides, we will learn about the \brf{Conditional Expectation Function}, which provides a justification why regression is the \brf{predominant technique in applied econometrics}






## The Conditional Expectation Function
We are interested in \brf{explaining the relationship between $x$ and $y$} in the population
\vfill
A useful concept in this regard is the \brf{Conditional Expecation Function (CEF)}: $E(y_i|X_i)$

- what is the **population average of $y_i$ for a given value of $X_i$**
- i.e. what if $X_i$ takes value $x$?

\vfill
If $y_i$ is continuous with conditional density $f_y(\cdot | X_i= x)$, \brf{the CEF is}
\begin{equation}
E(y_i|X_i=x)=\int t f_y(t | X_i= x)dt
\label{eq2}
\end{equation}
(or in the discrete case $E(y_i|X_i=x)=\sum_t t f_y(t | X_i= x)dt$)




## The Conditional Expectation Function
\begin{center}
\includegraphics[width=\linewidth]{../Graphs/cef_schooling}
\end{center}
CEF for earnings and schooling; four examples of conditional densities\\
\tiny{Source: \citet{angrist_2009}, Figure 3.1.1}




## The Law of Iterated Expectations
An \brf{unconditional expectation} can be written as the \brf{population average of the CEF}

\begin{equation}
E(y_i)=E\{E(y_i| X_i)\}
\label{eq3}
\end{equation}
\vfill
\brf{This is useful} because 

- we **often know conditional expectations** or assume what they are
- but we often **don't know unconditional expectations**
- the LIE breaks a random variable into two pieces ($f(X_i)$ and $E(y_i|X_i)$)

\vfill
For a proof, see \citet{angrist_2009}, ch. 3




## The Conditional Expectation Function
We can decompose $y_i=f(X_i,e_i)$ as follows (decomposition property)
\begin{equation}
y_i=E(y_i|X_i)+e_i
\label{eq4}
\end{equation}
\vfill
First \brf{useful property of (\ref{eq4})}: $e_i$ is mean-independent
\begin{equation}
E[e_i|X_i]=E[y_i-E[y_i|X_i]|X_i]=E[y_i|X_i]-E[y_i|X_i]=0
\label{eq5}
\end{equation}
\vfill
\pause
Second \brf{useful property of (\ref{eq4})}: $e_i$ is uncorrelated with any function of $X_i$
\vfill
Let $h(X_i)$ be any function of $X_i$.
\begin{equation}
E[h(X_i)e_i]=E\{E(h(X_i)e_i)|X_i \}=E\{ h(X_i) E(e_i|X_i)\}=0
\label{eq6}
\end{equation}





## The Conditional Expectation Function
\brf{Why are these properties useful?}

\vfill
Any \brf{random variable $y_i$ can be decomposed into} 

- A portion that is explained by $X_i$ (the CEF)
- A portion that is orthogonal to any function of $X_i$

\vfill
$\Rightarrow$ the \brf{CEF is a good summary of the relationship between $X_i$ and $y_i$}

- The decomposition property gives a justification for **thinking about RVs in terms of means**
- The CEF is the **best predictor of $y_i$ given $X_i$** (Minimum Mean Squared Error)






## The Conditional Expectation Function
\brf{The CEF Prediction Property}
Let $m(X_i)$ be any function of $X_i$. The CEF solves 
\begin{equation}
E[y_i|X_i]=\displaystyle{\argmin}_{m(X_i)} E[(y_i-m(X_i))^2]
\label{eq7}
\end{equation}
Therefore, it is the \brf{Minimum Mean Squared Error predictor} (read: best) of $y_i$ given $X_i$




## The Conditional Expectation Function
\brf{The ANOVA Theorem} (Analysis of variance)
\begin{eqnarray}
V(y_i)&=&V(E[y_i|X_i])+V(e_i) \\
&=& V(E[y_i|X_i])+E[V(y_i|X_i)]
\nonumber
\label{eq8}
\end{eqnarray}
\vfill

- The variance of a random variable can  be decomposed into the \brf{variance of the CEF} and the \brf{variance of the error term}
- Importantly, the CEF does not have to be linear. 

\vfill
See \citet[ch. 3.1.1]{angrist_2009} for proofs




## The Population Regression Function
To understand \brf{why we use regressions} it is important to understand the \brf{link between the CEF and the Population Regression Function} (PRF)
\vfill
In the bivariate case, the PRF is the linear function
\begin{equation}
y_p=\beta_0 + \beta_1 X_i
\label{eq9}
\end{equation}
\vfill
The population intercept $\beta_0$ and slope $\beta_1$ \brf{minimize the distance} between the $y_i$'s and the PRF line:
\begin{equation}
(\beta_0, \beta_1)=\displaystyle\argmin_{b_0, b_1} E[(y_i-b_0-b_1X_i)^2]
\label{eq10}
\end{equation}
\vfill
This minimization problem yields the first-order conditions:
\begin{eqnarray}
E[X_i(y_i-b_0-b_1X_i)] &=& 0 \\
E[(y_i-b_0-b_1X_i)] &=& 0
\nonumber
\label{eq11}
\end{eqnarray}





## The Population Regression Function
This system of two equations and two unknowns has the following closed-form solution:
\begin{eqnarray}
\beta_1&=&\frac{E[X_i(y_i-\beta_0)]}{E(X_i^2)}=\frac{Cov(y_i, X_i)}{V(X_i)}\\
\beta_0&=&E(y_i)-\beta_1 E(X_i)
\nonumber
\label{eq12}
\end{eqnarray}
\vfill
\pause
The \brf{Population Regression Model} includes the PRF plus an error term $u_i$
\begin{equation}
y_i=y_p+ u_i=\beta_0 + \beta_1 X_i + u_i
\label{eq12}
\end{equation}
\vfill
Note that, by construction $E(X_i, u_i)=E(X_i(y_i-\beta_0 - \beta_1 X_i))$

- The PRF is the linear function of $X_i$ that makes the error terms $u_i$ uncorrelated with $X_i$ in the population




## The Population Regression Function
\brf{Properties of the PRF}
\vfill
\brf{1)} *If the CEF is linear, then the PRF is the CEF*

- Whereas if the CEF is not linear, the PRF is a linear approximation

\vfill
\pause
\brf{2)} *The PRF is the best linear predictor of $y_i$ given $X_i$*

- We have shown in (\ref{eq12}) that $(b_0, b_1)$ solves the population least squares problem

\vfill
\pause 
\brf{3)} *The PRF is the best linear approximation to the CEF*

- It minimizes the MSE of the approximation





## The Population Regression Function
\begin{center}
\brf{Relationship between CEF and PRF: Example}
\includegraphics[width=\linewidth]{../Graphs/cef_schooling2}
\end{center}




## PRF and CEF: Useful for empirical work? 
What we are \brf{*actually* interested in is the CEF}

- This is the best predictor of $y_i$ given $X_i$ in the population 
- But we don't know the CEF

\vfill
\pause
The \brf{PRF is the best linear approximation of the CEF}

- Best approximation does not mean it's good. But it usually is...
- If we observed the population, we could predict $y_i$ given $X_i$ using the PRF

\vfill
\pause
In most cases, we \brf{only have a random sample of the population}

- We can fit a regression within our sample...
- Under some conditions, we can draw inference about the PRF





## The Sample Regression Function
Now suppose we have a \brf{sample of size $n$} that was \brf{randomly sampled from the population}, $(y_1, X_1), \dots, (y_n, X_n)$
\vfill
The sample regression function is 
\begin{equation}
\widehat{y_i}=\widehat{\beta_0} + \widehat{\beta_1} X_i
\label{eq13}
\end{equation}
\vfill
The Ordinary Least Squares (OLS) estimators $\widehat{\beta_0}$ and $\widehat{\beta_1}$ are derived through the minimization problem
\begin{equation}
(\widehat{\beta_0}, \widehat{\beta_1})=\displaystyle\argmin_{\widehat{b_0}, \widehat{b_1}} \displaystyle\sum_{i=1}^n[(y_i-\widehat{b_0}-\widehat{b_1}X_i)^2]
\label{eq14}
\end{equation}
\vfill
The sample means $\bar{y}=\frac{1}{n}\displaystyle\sum_{i=1}^n y_i$ and $\bar{X}=\frac{1}{n}\displaystyle\sum_{i=1}^n X_i$ are the sample analogs of the population means $E(y_i)$ and $E(X_i)$



## The Sample Regression Function
The \brf{residuals of the regression} are defined as $\widehat{u_i}=y_i-\widehat{\beta_0} + \widehat{\beta_1} X_i$. 
\vfill
When we ``run an OLS regression'', we \brf{minimize the sum of squared residuals (SSR)}, $\displaystyle\sum_{i=1}^n \widehat{u_i}^2$ and obtain values for $\widehat{\beta_0}$ and $\widehat{\beta_1}$
\vfill
\pause
Solving the minimization problem (\ref{eq14}) yields the \brf{estimators}
\begin{eqnarray}
\widehat{\beta_1}&=&\frac{\frac{1}{n}\sum_{i=1}^n (y_i - \bar{y})(X_i-\bar{X})}{\frac{1}{n}\sum_{i=1}^n (X_i-\bar{X})^2}=\frac{\widehat{Cov(y_i, X_i)}}{\widehat{V(X_i)}}\\
\widehat{\beta_0}&=&\bar{y}-\widehat{\beta_1}\bar{X} 
\nonumber
\label{eq15}
\end{eqnarray}



## Example of a Regression Function
\begin{center}
\includegraphics[width=\linewidth]{../Graphs/regression1}
\end{center}





## A Note on Notation and Lingo
Anything with a hat refers to the sample. The same symbol without a hat refers to the population.

- $\widehat{\beta_1}$ is the regression slope in the sample; $\beta_1$ is the slope of the PRF
- $\widehat{u_i}$ is the residual in the sample; $u_i$ is the error term in the population

\vfill
\pause
\brf{Estimator vs. Estimate}

- An **estimator is a function of a data sample**, for example (\ref{eq15})
- An **estimate** is the number obtained by an estimator based on an actual sample




## OLS Estimators
$\widehat{\beta_0}$ and $\widehat{\beta_1}$ are the \brf{sample analogs of $\beta_0$ and $\beta_1$}. We refer to them as \brf{OLS estimators}. 
\vfill
What we are actually interested in are the \brf{population parameters} $\beta_0$ and $\beta_1$
\vfill
With a given sample (and under conditions to be discussed later), the OLS estimators $\widehat{\beta_0}$ and $\widehat{\beta_1}$ are our\brf{ best guesses for the unknown population parameters}



## Example for OLS Estimation
We have a dataset of \brf{wages and education} (526 obs), and run a regression to see if one more year of education is associated with a higher wage
\begin{equation*}
wage_i=\beta_0+ \beta_1 educ_i + u_i
\end{equation*}
\vfill
\begin{center}
\includegraphics[width=\linewidth]{../Graphs/wage_educR}
\end{center}
The R output shows the estimates for $\widehat{\beta_0}$ and $\widehat{\beta_1}$ along with standard errors, t-statistics, and p-values




## Example for OLS Estimation
Same in a scatterplot
\begin{center}
\includegraphics[width=\linewidth]{../Graphs/scatter_wage_educ}
\end{center}




## Properties of the OLS Estimators
Note that the \brf{sample regression function} is the \brf{set of fitted values} 
\begin{equation}
\widehat{y_i}=\widehat{\beta_0}+ \widehat{\beta_1} X_i
\label{eq16}
\end{equation}
\vfill
\pause
\brf{Properties of the OLS Estimators} 
\vfill
\brf{1)} **The OLS residuals $\widehat{u_i**=y_i-\widehat{y_i}$ always add up to zero}
\begin{equation}
\displaystyle\sum_{i=1}^n \widehat{u_i}=0
\label{eq17}
\end{equation}
$\Rightarrow$ Follows from the first FOC from OLS
\vfill
\pause
\brf{2)} **The sample mean of $y_i$ equals the sample mean of $\widehat{y_i**$}
\begin{equation}
\frac{1}{n}\displaystyle\sum_{i=1}^n y_i = \frac{1}{n}\displaystyle\sum_{i=1}^n \widehat{y_i} + \widehat{u_i}=  \frac{1}{n}\displaystyle\sum_{i=1}^n \widehat{y_i} + \frac{1}{n}\displaystyle\sum_{i=1}^n \widehat{u_i}=\frac{1}{n}\displaystyle\sum_{i=1}^n \widehat{y_i}
\label{eq18}
\end{equation}






## Properties of the OLS Estimators

\brf{3)} **The sample covariance** (and therefore the sample correlation) **between the regressor and the residuals is always zero**
\begin{equation}
\displaystyle\sum_{i=1}^n x_i \widehat{u_i}=0
\label{eq19}
\end{equation}
$\Rightarrow$ Follows from the second FOC from OLS. 
\vfill
\pause
\brf{4)} **The correlation between the fitted values and the residuals is zero**
\begin{equation}
\displaystyle\sum_{i=1}^n \widehat{y_i} \widehat{u_i}=0
\label{eq20}
\end{equation}
$\Rightarrow$ Fitted values are a linear function of $X_i$. If $X_i$ is uncorrelated with the residuals, so is a linear transformation of $X_i$.




## Properties of the OLS Estimators
\brf{5)} **The point $(\bar{y**, \bar{X})$ is always on the regression line}
\begin{equation}
\bar{y}=\widehat{\beta_0}+\widehat{\beta_1}\bar{X}
\label{eq20}
\end{equation}
$\Rightarrow$ This follows from the FOC $\displaystyle\sum_{i=1}^n (y_i-\widehat{\beta_0}-\widehat{\beta_1}X_i)=0$
\vfill
\pause
Note that \brf{properties 1-5 hold by construction} 
\vfill
$\widehat{\beta_0}$ and $\widehat{\beta_1}$ were \brf{chosen such that these properties hold}




## Decomposition of the Variation in $y_i$
The OLS estimator decomposes the \brf{variation of $y_i$} into a component that is **explained by $X_i$** and a residual component that is **not explained by $X_i$**
\vfill
\brf{The Total Sum of Squares (SST)}
\begin{equation}
SST=\displaystyle\sum_{i=1}^n (y_i-\bar{y})^2
\label{eq21}
\end{equation}
\vfill
\pause
\brf{The Explained Sum of Squares (SSE)}
\begin{equation}
SSE=\displaystyle\sum_{i=1}^n (\widehat{y_i}-\bar{y})^2
\label{eq21}
\end{equation}
\vfill
\pause
\brf{Sum of Squared Residuals (SSR)}
\begin{equation}
SSR=\displaystyle\sum_{i=1}^n \widehat{u_i}^2
\label{eq21}
\end{equation}




## Goodness of Fit
The \brf{Goodness of Fit} is a statistic that describes \brf{how well the regressor $X_i$ explains the dependent variable $y_i$}
\vfill
The \brf{Goodness of Fit} is often \brf{measured by the $R^2 \in [0,1]$}
\begin{equation}
R^2= \frac{SSE}{SST}=1-\frac{SSR}{SST}
\label{eq21}
\end{equation}
The last equality follows from $SST=SSE+SSR$




## Goodness of Fit
\begin{columns}[T]
\begin{column}{0.5\textwidth}
\begin{center}
\end{center}
\includegraphics[width=\linewidth]{../Graphs/low_gof}
\end{column}
\begin{column}{0.5\textwidth}
\begin{center}
\end{center}
\includegraphics[width=\linewidth]{../Graphs/high_gof}
\end{column}
\end{columns}
\brf{Important for practice:} 

- A  high $R^2$ is (sometimes/often) useful for prediction. But it is not a sign of a ``high-quality'' estimator.
- In causal analysis, we often produce meaningful results with low $R^2$.




## Properties of the OLS Estimators $\widehat{\beta_0$ and $\widehat{\beta_1}$}
With these estimators, we want draw inference about $\beta_0$ and $\beta_1$ in the population
\vfill
To produce \brf{meaningful estimates}, the OLS estimators should fulfill (at least) \brf{three properties}
\begin{enumerate}
- **Unbiasedness**
- **Consistency**
- **Efficiency**
\end{enumerate}
\vfill
In the following, we **study under what conditions an estimator fulfills these properties** 




## Unbiasedness of the OLS Estimator
In most applications, the relevant parameter is the slope $\beta_1$
\vfill
\brf{Unbiasedness} means that the \brf{estimator ``gets it right'' on average}
\vfill
\brf{Idea}:

- We can draw **many random samples** from the same population
- In each sample, the **estimate $\widehat{\beta_1**$ would be different}
- Question: is the average $\widehat{\beta_1}$ equal to $\beta_1$

\pause
We want to prove for given values $\{X_i\}$, 
\begin{equation}
E[\hat{\beta_1}|\{X_i\}]=E\left[\frac{\frac{1}{n}\sum_{i=1}^n (y_i - \bar{y})(X_i-\bar{X})}{\frac{1}{n}\sum_{i=1}^n (X_i-\bar{X})^2} |\{X_i\} \right]=\frac{Cov(y_i, X_i)}{V(X_i)}=\beta_1
\label{eq22}
\end{equation}






## Unbiasedness of the OLS Estimator
To prove unbiasedness, four assumptions are required about the population: 
\vfill
\brf{SLR1 The PRF is linear in parameters}
\begin{equation}
y=\beta_0 + \beta_1 X + u
\label{eq23}
\end{equation}
\vfill
\brf{SLR2 The n observations are a random sample of the population}
\pause
\vfill
\brf{SLR3 There is variation in the regressor}, i.e. $V(X_i)>0$
\vfill
\brf{SLR4 Zero conditional mean assumption (ZCM)}: $u$ is mean-independent of $X$
\begin{equation}
E(u|X)=0
\label{eq23}
\end{equation}




## The Zero-Conditional-Mean Assumption
Of the four assumptions, \brf{ZCM is the one that is most often violated}. Here is an example:
\vfill
Suppose you want to \brf{estimate the effect of education on wages}

- You only observe wages and education levels
- But wages are determined by education and ability (but nothing else)
- Hence the error term $u$ includes ability $u=\tau A$

\vfill
\pause
In this case, the assumption $E(u|X)=0$ is most likely violated

- Smarter people tend to have higher education ($\tau>0$)
- Therefore, $E(u|X)>0$





## ZCM: intuition from Monte-Carlo Simulations
\brf{Simulation 1: ZCM holds}

- We generate samples of size 100
- For each observation, draw $X\sim \mbox{uniform}[0,1] $ and $u\sim N(0,1)$; assume both are uncorrelated 
\pause
- Assume that, in the population, $\beta_0=0$ and $\beta_1=1$
- We generate $y_i=0+1 x_i + u_i$
\pause
- Run a regression $y=\beta_0 + \beta_1 X + u$, obtain an estimate $\widehat{\beta_1}$
 
\pause
We \brf{repeat this procedure 25,000 times}




## ZCM: intuition from Monte-Carlo Simulations
\brf{Simulation 1: ZCM holds}

- We generate samples of size 100
- For each observation, draw $X\sim \mbox{uniform}[0,1] $ and $u\sim N(0,1)$; assume both are uncorrelated 
\pause
- Assume that, in the population, $\beta_0=0$ and $\beta_1=1$
- We generate  $y_i$ as  $y_i=0+1 x_i + u_i$
\pause
- Run a regression $y=\beta_0 + \beta_1 X + u$, obtain an estimate $\widehat{\beta_1}$
 





## ZCM: intuition from Monte-Carlo Simulations
\begin{center}
\includegraphics[width=0.7\linewidth]{../Graphs/montecarlo1}
\end{center}
Sampling distribution of $\widehat{\beta_1}$ from 25,000 random samples
\vfill
The average $\widehat{\beta_1}$ is very close to the true $\beta_1=1$




## ZCM: intuition from Monte-Carlo Simulations
\brf{Now consider a scenario where $E(u|X)\neq 0$ }
\vfill
We draw $X\sim \mbox{uniform}[0,1] $ and $e\sim N(0,1)$; but construct $u$ as 
\begin{equation*}
u_i=0.8 e_i + 0.2 x_i
\end{equation*}
\vfill
As before, generate $y_i$ as  $y_i=0+1 x_i + u_i$



## ZCM: intuition from Monte-Carlo Simulations
\begin{center}
\includegraphics[width=0.7\linewidth]{../Graphs/montecarlo2}
\end{center}
Sampling distribution of $\widehat{\beta_1}$ from 25,000 random samples
\vfill
\pause
The average $\widehat{\beta_1}$ is far away from the true $\beta_1=1$
\vfill
\brf{Our estimator is biased. We over-estimate the true effect}




## Consistency of the OLS Estimator
An \brf{estimator is consistent if it converges in probability} to the population parameter as the \brf{sample size goes to infinity}
\vfill
Formally: $plim \widehat{\beta_1}=\beta_1$
\vfill
\pause
\brf{Word of wisdom from a Nobel laureate} (Clive Granger, 2003):\\

- *If you can't get it right as n goes to infinity, you shouldn't be in this business/*




## Consistency of the OLS Estimator
\brf{Same Monte Carlo experiment as before}, but with $n \in \{ 100; 10,000; 1,000,000 \}$
\begin{columns}[T]
\begin{column}{0.5\textwidth}
\begin{center}
\includegraphics[width=0.8\linewidth]{../Graphs/consistency1}
\end{center}
\end{column}
\begin{column}{0.5\textwidth}
\begin{center}
\includegraphics[width=0.8\linewidth]{../Graphs/consistency2}
\includegraphics[width=0.8\linewidth]{../Graphs/consistency3}
\end{center}
\end{column}
\end{columns}




## Consistency of the OLS Estimator
Important ingredient: \brf{The Law of Large Numbers}\\
*Sample moments converge in probability to the corresponding population moments*
\vfill
\pause
\brf{Properties of probability limits}\\
*1) For any sample moment $\theta_n$ and continuous function $h(\cdot)$*
\begin{equation}
plim \mbox{  }  \theta_n = \theta \Rightarrow plim\mbox{  } h(\theta_n)=h(\theta)
\label{eq24}
\end{equation}
\vfill
*2) For two sample moments $\theta_n$ and $\kappa_n$, with $plim \mbox{  *  \theta_n = \theta$ and $plim \mbox{  }  \kappa_n = \kappa$}
\begin{eqnarray}
plim \mbox{  }  (\theta_n+ \kappa_n)&=&\theta + \kappa \nonumber \\
plim\mbox{  }   (\theta_n\kappa_n)&=&\theta \kappa \\
plim \mbox{  }  (\frac{\theta_n}{\kappa_n})&=&\frac{\theta}{\kappa} \nonumber 
\label{eq25}
\end{eqnarray}




## Consistency of the OLS Estimator
Proof that the \brf{OLS Estimator is consistent}
\begin{eqnarray}
plim \mbox{  } &=& plim \mbox{  } \left( \beta_1 + \frac{\displaystyle\sum_{i=1}^n u_i(X_i-\bar{X})}{\displaystyle\sum_{i=1}^n (X_i-\bar{X})^2} \right) \nonumber \\
&=& \beta_1 + \frac{plim \mbox{  } \displaystyle\sum_{i=1}^n u_i(X_i-\bar{X})}{ plim \mbox{  }\displaystyle\sum_{i=1}^n (X_i-\bar{X})^2}  \\
&=& \beta_1 + \frac{Cov(X_i, u_i)}{V(X_i)}=\beta_1
\label{eq26}
\end{eqnarray}
\vfill
Remember that we specified the PRF such that $Cov(u_i, x_i)=0$ in the population
\vfill
\pause
\brf{Important}: SLR1-4 ensure unbiasedness and consistency. But unbiasedness does not imply consistency and vice versa



## Efficiency of the OLS Estimator
An \brf{estimator is efficient if it has a small variance} (preferably the lowest variance among all available estimators)
\vfill
Important: the \brf{estimator $\widehat{\beta_1}$ is a random variable}

- this is the case becuase it is a function of random variables ($y_i$, $X_i$)
\pause
- in different samples we will obtain different $\widehat{\beta_1}$s

\vfill
Hence, the estimator has a \brf{sampling distribution}
\begin{equation}
\widehat{\beta_1}|X \sim (\beta_1, V(\widehat{\beta_1}|X))
\label{eq27}
\end{equation}




## Homoskedasticity
To derive the sampling variance of the OLS estimator, we make and additional assumption:
\vfill
\brf{SLR5 Homoskedasticity}
\begin{equation}
V(u|X)=\sigma^2
\label{eq27}
\end{equation}
\vfill
Homoskedasticity means that the \brf{variance in the error $u$ does not depend on $X$}
\vfill
\pause
Under homoskedasticity, the variance becomes 
\begin{equation}
V(\widehat{\beta_1}|X)=\frac{\sigma^2}{SST_x}
\label{eq28}
\end{equation}
To be proven in lecture




## The Variance $V(\widehat{\beta_1|X)$}
The \brf{error variance $\sigma^2$ is a population parameter}. We need to estimate it.
\vfill
It can be shown that a \brf{consistent estimator} is
\begin{equation}
\hat{\sigma}^2=\frac{1}{n-2}\displaystyle\sum_{i=1}^n \widehat{u_i}^2
\label{eq29}
\end{equation}
\vfill
\pause
It can be shown that \brf{under SLR1-5}, the \brf{OLS estimator is asymptotically efficient}
\begin{equation}
Avar \left(\sqrt{n}(\widehat{\beta_j}-\beta_j)\right) \leq Avar \left(\sqrt{n}(\tilde{\beta_j}-\beta_j)\right)
\label{eq30}
\end{equation}
Avar: asymptotic vairance; $\tilde{\beta_1}$ any other estimator



## The Gauss Markov Theorem
Under the assumptions: 

- \brf{SLR1:} linear PRF between $y$ and $X$
- \brf{SLR2:} the observations are a random sample from the population
-  \brf{SLR3:}there is variation in $X$
- \brf{SLR4:} the error term $u$ is mean-independent of $X$ (ZCM)
- \brf{SLR5:} the error is homoscedastic

\vfill
$\Rightarrow$ the OLS estimator is the \brf{Best Linear Unbiased Estimator}
\vfill
\pause
It is unbiased because of SLR1-4; efficiency (``best'') requires SLR5




## Standard Errors
Standard errors \brf{measure the dispersion of $\widehat{\beta_0}$ and  $\widehat{\beta_1}$} 
\vfill
Because we cannot observe $\sigma^2$, the **standard error is estimated**
\begin{equation}
se(\widehat{\beta_1}|X)=\sqrt{\frac{\widehat{\sigma}^2}{SST_x}}=\frac{\widehat{\sigma}}{\sqrt{SST_x}}
\label{eq31}
\end{equation}
\vfill
\pause
\brf{Standard errors} of the estimates are the \brf{critical ingredient to test hypotheses about the population parameters}




## Summary
This lecture introduced the most \brf{important concepts behind regression analysis}
\pause
\vfill
\brf{Why we use regression}: CEF and PRF
\pause
\vfill
\brf{OLS Estimators}

- How to derive them
- Properties of the OLS estimator
- Under what conditions is it efficient

\vfill
\pause
\brf{Next lecture}

- Multiple regression analysis
- Statistical inference





