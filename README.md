[![Travis-CI Build Status](https://travis-ci.org/datathonbr/moanr.svg?branch=master)](https://travis-ci.org/datathonbr/moanr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/datathonbr/moanr?branch=master&svg=true)](https://ci.appveyor.com/project/datathonbr/moanr)

# moanr

The goal of moanr is to adjust Markov Ordinary Augmented Networks in R. It is ajusted using least square mixed models.

## Installation

You can install moanr from github with:


``` r
# install.packages("devtools")
devtools::install_github("datathonbr/moanr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r

ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
lm.D90 <- lm(weight ~ group - 1) # omitting intercept

anova(lm.D9)
summary(lm.D90)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm.D9, las = 1)      # Residuals, Fitted, ...
par(opar)

moanr::moanr("a", "b")
```
