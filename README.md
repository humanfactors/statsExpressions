
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `statsExpressions`: Expressions with statistical details

| Package                                                                                                                                                                   | Status                                                                                                                                                                                                 | Usage                                                                                                                                                       | GitHub                                                                                                                                                                   | References                                                                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![CRAN\_Release\_Badge](http://www.r-pkg.org/badges/version-ago/statsExpressions)](https://CRAN.R-project.org/package=statsExpressions)                                  | [![Build Status](https://travis-ci.org/IndrajeetPatil/statsExpressions.svg?branch=master)](https://travis-ci.org/IndrajeetPatil/statsExpressions)                                                      | [![Daily downloads badge](https://cranlogs.r-pkg.org/badges/last-day/statsExpressions?color=blue)](https://CRAN.R-project.org/package=statsExpressions)     | [![GitHub version](https://img.shields.io/badge/GitHub-0.2.0.9000-orange.svg?style=flat-square)](https://github.com/IndrajeetPatil/statsExpressions/)                    | [![Website](https://img.shields.io/badge/website-statsExpressions-orange.svg?colorB=E91E63)](https://indrajeetpatil.github.io/statsExpressions/)                          |
| [![CRAN Checks](https://cranchecks.info/badges/summary/statsExpressions)](https://cran.r-project.org/web/checks/check_results_statsExpressions.html)                      | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/IndrajeetPatil/statsExpressions?branch=master&svg=true)](https://ci.appveyor.com/project/IndrajeetPatil/statsExpressions) | [![Weekly downloads badge](https://cranlogs.r-pkg.org/badges/last-week/statsExpressions?color=blue)](https://CRAN.R-project.org/package=statsExpressions)   | [![Forks](https://img.shields.io/badge/forks-1-blue.svg)](https://github.com/IndrajeetPatil/statsExpressions/)                                                           | [![Rdoc](https://www.rdocumentation.org/badges/version/statsExpressions)](https://www.rdocumentation.org/packages/statsExpressions)                                       |
| [![minimal R version](https://img.shields.io/badge/R%3E%3D-3.5.0-6666ff.svg)](https://cran.r-project.org/)                                                                | [![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/)                                                                                         | [![Monthly downloads badge](https://cranlogs.r-pkg.org/badges/last-month/statsExpressions?color=blue)](https://CRAN.R-project.org/package=statsExpressions) | [![Github Issues](https://img.shields.io/badge/issues-5-red.svg)](https://github.com/IndrajeetPatil/statsExpressions/issues)                                             | [![vignettes](https://img.shields.io/badge/vignettes-0.2.0-orange.svg?colorB=FF5722)](https://CRAN.R-project.org/package=statsExpressions/vignettes/)                     |
| [![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/IndrajeetPatil/statsExpressions.svg)](https://github.com/IndrajeetPatil/statsExpressions) | [![Coverage Status](https://coveralls.io/repos/github/IndrajeetPatil/statsExpressions/badge.svg?branch=master)](https://coveralls.io/github/IndrajeetPatil/statsExpressions?branch=master)             | [![Total downloads badge](https://cranlogs.r-pkg.org/badges/grand-total/statsExpressions?color=blue)](https://CRAN.R-project.org/package=statsExpressions)  | [![Github Stars](https://img.shields.io/github/stars/IndrajeetPatil/statsExpressions.svg?style=social&label=Github)](https://github.com/IndrajeetPatil/statsExpressions) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2074621.svg)](https://doi.org/10.5281/zenodo.3386122)                                                                 |
| [![Licence](https://img.shields.io/badge/licence-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)                                                          | [![Codecov test coverage](https://codecov.io/gh/IndrajeetPatil/statsExpressions/branch/master/graph/badge.svg)](https://codecov.io/gh/IndrajeetPatil/statsExpressions?branch=master)                   | [![HitCount](http://hits.dwyl.io/IndrajeetPatil/statsExpressions.svg)](http://hits.dwyl.io/IndrajeetPatil/statsExpressions)                                 | [![Last-changedate](https://img.shields.io/badge/last%20change-2020--01--15-yellowgreen.svg)](https://github.com/IndrajeetPatil/statsExpressions/commits/master)         | [![GitHub last commit](https://img.shields.io/github/last-commit/IndrajeetPatil/statsExpressions.svg)](https://github.com/IndrajeetPatil/statsExpressions/commits/master) |
| [![status](https://tinyverse.netlify.com/badge/statsExpressions)](https://CRAN.R-project.org/package=statsExpressions)                                                    | [![Covrpage Summary](https://img.shields.io/badge/covrpage-Last_Build_2020_01_15-yellowgreen.svg)](https://github.com/IndrajeetPatil/statsExpressions/blob/master/tests/README.md)                     | [![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/statsExpressions/community)                                                | [![Project Status](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)                                                               | [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/IndrajeetPatil/statsExpressions/issues)      |

# Introduction

[`statsExpressions`](https://indrajeetpatil.github.io/statsExpressions/)
provides statistical processing backend for the
[`ggstatsplot`](https://indrajeetpatil.github.io/ggstatsplot/) package,
which combines `ggplot2` visualizations with expressions containing
results from statistical tests. `statsExpressions` contains all
functions needed to create these expressions.

# Installation

To get the latest, stable `CRAN` release (`0.2.0`):

``` r
install.packages(pkgs = "statsExpressions")
```

You can get the **development** version of the package from `GitHub`
(`0.2.0.9000`). To see what new changes (and bug fixes) have been made
to the package since the last release on `CRAN`, you can check the
detailed log of changes here:
<https://indrajeetpatil.github.io/statsExpressions/news/index.html>

If you are in hurry and want to reduce the time of installation, prefer-

``` r
# needed package to download from GitHub repo
utils::install.packages(pkgs = "remotes")

# downloading the package from GitHub
remotes::install_github(
  repo = "IndrajeetPatil/statsExpressions", # package path on GitHub
  dependencies = FALSE, # assumes you have already installed needed packages
  quick = TRUE # skips docs, demos, and vignettes
)
```

If time is not a constraint-

``` r
remotes::install_github(
  repo = "IndrajeetPatil/statsExpressions", # package path on GitHub
  dependencies = TRUE, # installs packages which statsExpressions depends on
  upgrade_dependencies = TRUE # updates any out of date dependencies
)
```

# Citation

If you want to cite this package in a scientific journal or in any other
context, run the following code in your `R` console:

``` r
citation("statsExpressions")
```

# Documentation and Examples

To see the documentation relevant for the **development** version of the
package, see the dedicated website for `statsExpressions`, which is
updated after every new commit:
<https://indrajeetpatil.github.io/statsExpressions/>.

# Summary of types of statistical analyses

Currently, it supports only the most common types of statistical tests.
Specifically, **parametric**, **non-parametric**, **robust**, and
**bayesian** versions of:

  - **t-test**
  - **anova**
  - **correlation** tests
  - **contingency table** analysis
  - **meta-analysis**

The table below summarizes all the different types of analyses currently
supported in this package-

| Description                                       | Parametric                     | Non-parametric                 | Robust                         | Bayes Factor                   |
| ------------------------------------------------- | ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| Between group/condition comparisons               | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> |
| Within group/condition comparisons                | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> |
| Distribution of a numeric variable                | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> |
| Correlation between two variables                 | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> | <font color="green">Yes</font> |
| Association between categorical variables         | <font color="green">Yes</font> | `NA`                           | `NA`                           | <font color="green">Yes</font> |
| Equal proportions for categorical variable levels | <font color="green">Yes</font> | `NA`                           | `NA`                           | <font color="green">Yes</font> |
| Random-effects meta-analysis                      | <font color="green">Yes</font> | <font color="red">No</font>    | <font color="green">Yes</font> | <font color="green">Yes</font> |

# Statistical reporting

For **all** statistical test expressions, the default template abides by
the [APA](https://my.ilstu.edu/~jhkahn/apastats.html) gold standard for
statistical reporting. For example, here are results from Yuen’s test
for trimmed means (robust *t*-test):

<img src="man/figures/stats_reporting_format.png" align="center" />

# Summary of statistical tests and effect sizes

Here is a summary table of all the statistical tests currently supported
across various functions:

| Functions                                | Type           | Test                                                                                                                                                                                       | Effect size                                                                                                                                                                                           | 95% CI available?                                                                                          |
| ---------------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `expr_anova_parametric` (2 groups)       | Parametric     | Student’s and Welch’s *t*-test                                                                                                                                                             | Cohen’s *d*, Hedge’s *g*                                                                                                                                                                              | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_parametric` (\> 2 groups)    | Parametric     | Fisher’s and Welch’s one-way ANOVA                                                                                                                                                         | ![\\eta^2, \\eta^2\_p, \\omega^2, \\omega^2\_p](https://latex.codecogs.com/png.latex?%5Ceta%5E2%2C%20%5Ceta%5E2_p%2C%20%5Comega%5E2%2C%20%5Comega%5E2_p "\\eta^2, \\eta^2_p, \\omega^2, \\omega^2_p") | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_nonparametric` (2 groups)    | Non-parametric | Mann-Whitney *U*-test                                                                                                                                                                      | *r*                                                                                                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_nonparametric` (\> 2 groups) | Non-parametric | Kruskal-Wallis Rank Sum Test                                                                                                                                                               | ![\\epsilon^2](https://latex.codecogs.com/png.latex?%5Cepsilon%5E2 "\\epsilon^2")                                                                                                                     | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_robust` (2 groups)           | Robust         | Yuen’s test for trimmed means                                                                                                                                                              | ![\\xi](https://latex.codecogs.com/png.latex?%5Cxi "\\xi")                                                                                                                                            | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_robust` (\> 2 groups)        | Robust         | Heteroscedastic one-way ANOVA for trimmed means                                                                                                                                            | ![\\xi](https://latex.codecogs.com/png.latex?%5Cxi "\\xi")                                                                                                                                            | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_parametric` (2 groups)       | Parametric     | Student’s *t*-test                                                                                                                                                                         | Cohen’s *d*, Hedge’s *g*                                                                                                                                                                              | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_parametric` (\> 2 groups)    | Parametric     | Fisher’s one-way repeated measures ANOVA                                                                                                                                                   | ![\\eta^2\_p, \\omega^2](https://latex.codecogs.com/png.latex?%5Ceta%5E2_p%2C%20%5Comega%5E2 "\\eta^2_p, \\omega^2")                                                                                  | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_nonparametric` (2 groups)    | Non-parametric | Wilcoxon signed-rank test                                                                                                                                                                  | *r*                                                                                                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_nonparametric` (\> 2 groups) | Non-parametric | Friedman rank sum test                                                                                                                                                                     | ![W\_{Kendall}](https://latex.codecogs.com/png.latex?W_%7BKendall%7D "W_{Kendall}")                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_robust` (2 groups)           | Robust         | Yuen’s test on trimmed means for dependent samples                                                                                                                                         | ![\\xi](https://latex.codecogs.com/png.latex?%5Cxi "\\xi")                                                                                                                                            | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_anova_robust` (\> 2 groups)        | Robust         | Heteroscedastic one-way repeated measures ANOVA for trimmed means                                                                                                                          | <font color="red">![\\times](https://latex.codecogs.com/png.latex?%5Ctimes "\\times")</font>                                                                                                          | <font color="red">![\\times](https://latex.codecogs.com/png.latex?%5Ctimes "\\times")</font>               |
| `expr_contingency_tab` (unpaired)        | Parametric     | ![\\text{Pearson's}\~ \\chi^2 \~\\text{test}](https://latex.codecogs.com/png.latex?%5Ctext%7BPearson%27s%7D~%20%5Cchi%5E2%20~%5Ctext%7Btest%7D "\\text{Pearson's}~ \\chi^2 ~\\text{test}") | Cramér’s *V*                                                                                                                                                                                          | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_contingency_tab` (paired)          | Parametric     | McNemar’s test                                                                                                                                                                             | Cohen’s *g*                                                                                                                                                                                           | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_contingency_tab`                   | Parametric     | One-sample proportion test                                                                                                                                                                 | Cramér’s *V*                                                                                                                                                                                          | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_corr_test`                         | Parametric     | Pearson’s *r*                                                                                                                                                                              | *r*                                                                                                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_corr_test`                         | Non-parametric | ![\\text{Spearman's}\~ \\rho](https://latex.codecogs.com/png.latex?%5Ctext%7BSpearman%27s%7D~%20%5Crho "\\text{Spearman's}~ \\rho")                                                        | ![\\rho](https://latex.codecogs.com/png.latex?%5Crho "\\rho")                                                                                                                                         | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_corr_test`                         | Robust         | Percentage bend correlation                                                                                                                                                                | *r*                                                                                                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_t_onesample`                       | Parametric     | One-sample *t*-test                                                                                                                                                                        | Cohen’s *d*, Hedge’s *g*                                                                                                                                                                              | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_t_onesample`                       | Non-parametric | One-sample Wilcoxon signed rank test                                                                                                                                                       | *r*                                                                                                                                                                                                   | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_t_onesample`                       | Robust         | One-sample percentile bootstrap                                                                                                                                                            | robust estimator                                                                                                                                                                                      | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_meta_parametric`                   | Parametric     | Meta-analysis via random-effects models                                                                                                                                                    | ![\\beta](https://latex.codecogs.com/png.latex?%5Cbeta "\\beta")                                                                                                                                      | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |
| `expr_meta_robust`                       | Robust         | Meta-analysis via robust random-effects models                                                                                                                                             | ![\\beta](https://latex.codecogs.com/png.latex?%5Cbeta "\\beta")                                                                                                                                      | <font color="green">![\\checkmark](https://latex.codecogs.com/png.latex?%5Ccheckmark "\\checkmark")</font> |

# Primary functions

A list of primary functions in this package can be found at the package
website:
<https://indrajeetpatil.github.io/statsExpressions/reference/index.html>

Following are few examples of how these functions can be used.

## Example: Expressions for one-sample *t*-test

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)

# create fake data
df <- data.frame(x = rnorm(1000, 0.1, 0.5))

# creating a histogram plot
p <- ggplot(df, aes(x)) +
  geom_histogram(alpha = 0.5) +
  geom_vline(xintercept = mean(df$x), color = "red")

# adding a caption with a non-parametric one-sample test
p + labs(
  title = "One-Sample Wilcoxon Signed Rank Test",
  caption = expr_t_onesample(df, x, type = "nonparametric")
)
#> Note: 95% CI for effect size estimate was computed with 100 bootstrap samples.
```

<img src="man/figures/README-example_t_one-1.png" width="100%" />

## Example: Expressions for two-sample *t*-test

``` r
# setup
set.seed(123)
library(ggplot2)
library(hrbrthemes)

# create a plot
p <- ggplot(ToothGrowth, aes(supp, len)) + geom_boxplot() + theme_ipsum_rc()

# adding a subtitle with
p + labs(
  title = "Two-Sample Welch's t-test",
  subtitle = expr_t_parametric(ToothGrowth, supp, len)
)
```

<img src="man/figures/README-example_t_two-1.png" width="100%" />

## Example: Expressions for one-way ANOVA

Let’s say we want to check differences in weight of the vehicle based on
number of cylinders in the engine and wish to carry out Welch’s ANOVA:

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)

# create a boxplot
ggplot(iris, aes(x = Species, y = Sepal.Length)) + geom_boxplot() +
  labs(
    title = "Welch's ANOVA",
    subtitle = expr_anova_parametric(iris, Species, Sepal.Length, messages = FALSE)
  )
```

<img src="man/figures/README-example_anova_parametric-1.png" width="100%" />

In case you change your mind and now want to carry out a robust ANOVA
instead. Also, let’s use a different kind of a visualization:

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)
library(ggridges)

# create a ridgeplot
p <- ggplot(iris, aes(x = Sepal.Length, y = Species)) +
  geom_density_ridges(
    jittered_points = TRUE, quantile_lines = TRUE,
    scale = 0.9, vline_size = 1, vline_color = "red",
    position = position_raincloud(adjust_vlines = TRUE)
  )

# create an expression containing details from the relevant test
results <- expr_anova_robust(iris, Species, Sepal.Length, messages = FALSE)

# display results on the plot
p + labs(
  title = "A heteroscedastic one-way ANOVA for trimmed means",
  subtitle = results
)
```

<img src="man/figures/README-example_anova-1.png" width="100%" />

## Example: Expressions for correlation analysis

Let’s look at another example where we want to run correlation analysis:

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)

# create a ridgeplot
p <- ggplot(mtcars, aes(x = mpg, y = wt)) +
  geom_point() +
  geom_smooth(method = "lm")

# create an expression containing details from the relevant test
results <- expr_corr_test(mtcars, mpg, wt, type = "nonparametric")

# display results on the plot
p + labs(
  title = "Spearman's rank correlation coefficient",
  subtitle = results
)
```

<img src="man/figures/README-example_corr-1.png" width="100%" />

## Example: Expressions for contingency table analysis

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)

# data
df <- as.data.frame(table(mpg$class))
colnames(df) <- c("class", "freq")

# basic pie chart
p <- ggplot(df, aes(x = "", y = freq, fill = factor(class))) +
  geom_bar(width = 1, stat = "identity") +
  theme(
    axis.line = element_blank(),
    plot.title = element_text(hjust = 0.5)
  )

# cleaning up the chart and adding results from one-sample proportion test
p +
  coord_polar(theta = "y", start = 0) +
  labs(
    fill = "class",
    x = NULL,
    y = NULL,
    title = "Pie Chart of class",
    subtitle = expr_onesample_proptest(df, class, counts = freq),
    caption = "One-sample goodness of fit proportion test"
  )
#> Note: 95% CI for effect size estimate was computed with 100 bootstrap samples.
```

<img src="man/figures/README-example_contingency-1.png" width="100%" />

You can also use these function to get the expression in return without
having to display them in plots:

``` r
# setup
set.seed(123)
library(ggplot2)
library(statsExpressions)

# Pearson's chi-squared test of independence
expr_contingency_tab(mtcars, am, cyl, messages = FALSE)
#> paste(NULL, chi["Pearson"]^2, "(", "2", ") = ", "8.74", ", ", 
#>     italic("p"), " = ", "0.013", ", ", widehat(italic("V"))["Cramer"], 
#>     " = ", "0.46", ", CI"["95%"], " [", "0.08", ", ", "0.75", 
#>     "]", ", ", italic("n")["obs"], " = ", 32L)
```

## Example: Expressions for meta-analysis

``` r
# setup
set.seed(123)
library(metaviz)
library(ggplot2)

# rename columns to `statsExpressions` conventions
df <- dplyr::rename(mozart, estimate = d, std.error = se)

# meta-analysis forest plot with results random-effects meta-analysis
viz_forest(
  x = mozart[, c("d", "se")],
  study_labels = mozart[, "study_name"],
  xlab = "Cohen's d",
  variant = "thick",
  type = "cumulative"
) + # use `statsExpressions` to create expression containing results 
  labs(
    title = "Meta-analysis of Pietschnig, Voracek, and Formann (2010) on the Mozart effect",
    subtitle = expr_meta_parametric(df, k = 3)
  ) + 
  theme(text = element_text(size = 12))
```

<img src="man/figures/README-example_metaanalysis-1.png" width="100%" />

# Usage in `ggstatsplot`

Note that these functions were initially written to display results from
statistical tests on ready-made `ggplot2` plots implemented in
`ggstatsplot`.

For detailed documentation, see the package website:
<https://indrajeetpatil.github.io/ggstatsplot/>

Here is an example from `ggstatsplot` of what the plots look like when
the expressions are displayed in the subtitle-

<img src="man/figures/README-ggwithinstats1-1.png" align="center" />

# Code coverage

As the code stands right now, here is the code coverage for all primary
functions involved:
<https://codecov.io/gh/IndrajeetPatil/statsExpressions/tree/master/R>

# Contributing

I’m happy to receive bug reports, suggestions, questions, and (most of
all) contributions to fix problems and add features. I personally prefer
using the `GitHub` issues system over trying to reach out to me in other
ways (personal e-mail, Twitter, etc.). Pull Requests for contributions
are encouraged.

Here are some simple ways in which you can contribute (in the increasing
order of commitment):

  - Read and correct any inconsistencies in the
    [documentation](https://indrajeetpatil.github.io/statsExpressions/)

  - Raise issues about bugs or wanted features

  - Review code

  - Add new functionality (in the form of new plotting functions or
    helpers for preparing subtitles)

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/IndrajeetPatil/statsExpressions/blob/master/.github/CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.
