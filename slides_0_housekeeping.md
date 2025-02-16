---
title: "[ECON42720 Causal Inference and Policy Evaluation](https://benelsner82.github.io/causalinfUCD/)"
subtitle: "0 Housekeeping"
author: "Ben Elsner (UCD)"
output:
  beamer_presentation:
    includes:
      in_header: "../Templates/template_metrics.tex"
classoption: "aspectratio=169, handout" 
---



## Causal questions are everywhere

Does a higher income tax rate reduce inequality?

\vfill

Does a new drug improve health outcomes?

\vfill

Does a new training program improve employment outcomes?

\vfill

Does raising interest rates reduce inflation?

\vfill

Does going to the gym make you healthier?

## Answering causal questions

The "hard" sciences answer \br{causal questions by conducting experiments}

\vfill

But \br{experiments are not always possible}

-   Ethical concerns
-   Practical concerns
-   Financial constraints
-   etc

## This module: causal inference without experiments

We will learn how to \br{answer causal questions} using \br{observational data}

\vfill

What we need for that:

-   knowledge of \br{statistics}
-   theory of \br{causal inference}
-   understanding of \br{best practices} in the social sciences
-   \br{programming skills} to implement methods

## This module: causal inference without experiments

\brf{What we will cover}

-   Introduction to causal inference
-   The most important causal research designs
-   Applications of causal inference methods

\vfill

\brf{What we will NOT cover}

-   Causal machine learning (but: references available on request)
-   Causal discovery and other alchemy

## Course Page & Brightspace

All materials and the syllabus are available on the [\brf{Course Page}](https://benelsner82.github.io/causalinfUCD/)

\vfill

\brf{Brightspace} will be used for

-   Announcements
-   Answering questions in the Forum

## Topics Covered in this Course

1.  Foundations of Causality: DAGs
2.  Econometrics Recap
3.  Randomised experiments and potential outcomes
4.  Matching and inverse probability weighting
5.  Instrumental variables
6.  Regression Discontinuity
7.  Difference-in-differences
8.  Synthetic control

## Two Main Textbooks

\brf{Cunningham, Scott. Causal Inference: The Mixtape.} Yale University Press, 2021. Free html version at <https://mixtape.scunning.com/>

\vfill

\brf{Huntington-Klein, N. (2021). The Effect: An Introduction to Research Design and Causality (1st ed.).} Chapman and Hall/CRC. Free html version at <https://theeffectbook.net/>.

## Other Textbooks

\brf{The classic}: Angrist, J. and J.-S. Pischke (2009). *Mostly Harmless Econometrics*. Princeton University Press.

\vfill

\brf{Simple intro}: Angrist, J. and J.-S. Pischke (2014). *Mastering 'Metrics*. Princeton University Press.

\vfill

\brf{For the cool kids}: Huber, M. (2023). *Causal Analysis: Impact Evaluation and Causal Machine Learning with Applications in R*. MIT Press. Free e-book version available online at <https://mitpress.ublish.com/ebook/causal-analysis-impact-evaluation-and-causal-machine-learning-with-applications-in-r-preview/12759/Cover>

\vfill

\brf{Intro to data analysis}: Békés, G. and G. Kézdi (2021). *Data Analysis for Business, Economics, and Policy*. Cambridge University Press.

## Prerequisites

(Frequentist) \br{Statistics}: estimation and inference (undergrad level)

\vfill

\br{Econometrics}: multivariate regressions and panel regressions

\vfill

\br{Programming}: you must be able to write code in R

\vfill

That's it really! More important: curiosity and willingness to learn new things

## Sessions

We meet every Wednesday, 9-11am, D201 Newman

\vfill

The sessions will be a mix of

-   theory lectures
-   applications
-   advice on how to do stuff in R

\vfill

We don't have enough course time for lab sessions. We will make up for that in the assignments.

## Software

Please install the following \br{software on your computer}:

-   \br{Programming:} R and R Studio
-   \br{Word processing:} Quarto (optional)
-   \br{Version control:} Github desktop or alternative

## Asking Questions

\brf{Questions that have no confidential content} can be asked in the \brf{Brightspace Forum}

-   This concerns 90% of questions about material or logistics
-   I will answer questions in the forum
-   You can email me and I will post on the forum without mentioning your name

\vfill

\brf{Questions with confidential content} should be asked via \brf{email}

-   These are questions that are specific to you
-   Examples: accommodation of disability, illness, personal circumstances

## Assessment

\br{Final exam}: 60% of final grade

\vfill

\br{Assignments}: 40% of final grade

-   First assignment given in week 4
-   Second assignment around week 9

\vfill

Details about assignments will be given closer to the time

## AI Policy

You can use \br{AI for the assignments}

\vfill

ChatGPT and Github Co-pilot work well for R. Github Co-pilot is free for students.

\vfill

But use it with caution

\vfill

If you use AI, add a statement that explains briefly how you used it

## .


\begin{large}
\begin{tabular}{m{1cm} l}
  \includegraphics[width=1cm]{../Templates/emailicon.png} & \href{mailto:benjamin.elsner@ucd.ie}{benjamin.elsner@ucd.ie} \\
  \includegraphics[width=1.2cm]{../Templates/interneticon.jpeg} & \href{https://benjaminelsner.com}{www.benjaminelsner.com} \\   
  \includegraphics[width=1.2cm]{../Templates/calendlyicon.png} & \href{https://calendly.com/benjamin-elsner/office-hour}{Sign up for office hours} \\  
  \includegraphics[width=1cm]{../Templates/youtubeicon.png} & \href{www.youtube.com/@ben_elsner}{YouTube Channel} \\    
  \includegraphics[width=1cm]{../Templates/xicon.png} & \href{https://twitter.com/ben_elsner}{@ben\_elsner} \\ 
    \includegraphics[width=1cm]{../Templates/linkedinicon.png} & \href{www.linkedin.com/in/benjamin-elsner-b71b98bb}{LinkedIn} \\     
\end{tabular}
\end{large}

## Contact


**Prof. Benjamin Elsner** \
University College Dublin \
School of Economics \
Newman Building, Office G206 \
[benjamin.elsner@ucd.ie](mailto:benjamin.elsner@ucd.ie)
\vfill
Office hours by appointment. Please email me. 



