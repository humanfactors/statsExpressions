% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/one_sample_test.R
\name{one_sample_test}
\alias{one_sample_test}
\title{One-sample tests}
\usage{
one_sample_test(
  data,
  x,
  type = "parametric",
  test.value = 0,
  k = 2L,
  conf.level = 0.95,
  tr = 0.2,
  bf.prior = 0.707,
  effsize.type = "g",
  nboot = 100L,
  top.text = NULL,
  ...
)
}
\arguments{
\item{data}{A dataframe (or a tibble) from which variables specified are to
be taken. Other data types (e.g., matrix,table, array, etc.) will \strong{not}
be accepted.}

\item{x}{A numeric variable from the dataframe \code{data}.}

\item{type}{A character specifying the type of statistical approach.
\itemize{
\item \code{"parametric"}
\item \code{"nonparametric"}
\item \code{"robust"}
\item \code{"bayes"}
}

Corresponding abbreviations are also accepted: \code{"p"} (for parametric),
\code{"np"} (for nonparametric), \code{"r"} (for robust), or \code{"bf"} (for Bayesian).}

\item{test.value}{A number indicating the true value of the mean (Default:
\code{0}).}

\item{k}{Number of digits after decimal point (should be an integer)
(Default: \code{k = 2L}).}

\item{conf.level}{Confidence/Credible Interval (CI) level. Default to \code{0.95}
(\verb{95\%}).}

\item{tr}{Trim level for the mean when carrying out \code{robust} tests. In case
of an error, try reducing the value of \code{tr}, which is by default set to
\code{0.2}. Lowering the value might help.}

\item{bf.prior}{A number between \code{0.5} and \code{2} (default \code{0.707}), the prior
width to use in calculating Bayes factors and posterior estimates. In
addition to numeric arguments, several named values are also recognized:
\code{"medium"}, \code{"wide"}, and \code{"ultrawide"}, corresponding to \emph{r} scale values
of 1/2, sqrt(2)/2, and 1, respectively. In case of an ANOVA, this value
corresponds to scale for fixed effects.}

\item{effsize.type}{Type of effect size needed for \emph{parametric} tests. The
argument can be \code{"d"} (for Cohen's \emph{d}) or \code{"g"} (for Hedge's \emph{g}).}

\item{nboot}{Number of bootstrap samples for computing confidence interval
for the effect size (Default: \code{100L}).}

\item{top.text}{Text to display on top of the Bayes Factor message. This is
mostly relevant in the context of \code{ggstatsplot} functions.}

\item{...}{Currently ignored.}
}
\description{
A dataframe containing results from a one-sample test. The exact test and the
effect size details contained will depend on the \code{type} argument.

To see details about functions which are internally used to carry out these
analyses, see the following vignette-
\url{https://indrajeetpatil.github.io/statsExpressions/articles/stats_details.html}
}
\examples{
\donttest{
# for reproducibility
set.seed(123)
library(statsExpressions)
options(tibble.width = Inf, pillar.bold = TRUE, pillar.neg = TRUE)

# ----------------------- parametric ---------------------------------------

one_sample_test(
  data = ggplot2::msleep,
  x = brainwt,
  test.value = 0.275,
  type = "parametric"
)

# ----------------------- non-parametric -----------------------------------

one_sample_test(
  data = ggplot2::msleep,
  x = brainwt,
  test.value = 0.275,
  type = "nonparametric"
)

# ----------------------- robust --------------------------------------------

one_sample_test(
  data = ggplot2::msleep,
  x = brainwt,
  test.value = 0.275,
  type = "robust"
)

# ---------------------------- Bayesian -----------------------------------

one_sample_test(
  data = ggplot2::msleep,
  x = brainwt,
  test.value = 0.275,
  type = "bayes",
  bf.prior = 0.8
)
}
}
