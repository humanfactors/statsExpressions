
# parametric -----------------------------------------------------------

test_that(
  desc = "one_sample_test parametric works",
  code = {
    skip_if(getRversion() < "4.0")

    # Hedge's g and non-central
    set.seed(123)
    using_function1 <-
      one_sample_test(
        data = dplyr::sample_frac(movies_long, 0.05),
        x = length,
        test.value = 120,
        type = "p",
        k = 5
      )

    set.seed(123)
    results1 <-
      ggplot2::expr(
        paste(
          italic("t")["Student"],
          "(",
          "78",
          ") = ",
          "-2.67496",
          ", ",
          italic("p"),
          " = ",
          "0.00910",
          ", ",
          widehat(italic("g"))["Hedges"],
          " = ",
          "-0.29805",
          ", CI"["95%"],
          " [",
          "-0.52379",
          ", ",
          "-0.07429",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "79"
        )
      )

    # Cohen's d and non-central
    set.seed(123)
    using_function2 <-
      suppressWarnings(
        one_sample_test(
          data = dplyr::sample_frac(movies_long, 0.05),
          x = "length",
          test.value = 120,
          type = "p",
          effsize.type = "d",
          k = 4,
          conf.level = 0.90
        )
      )

    set.seed(123)
    results2 <-
      ggplot2::expr(
        paste(
          italic("t")["Student"],
          "(",
          "78",
          ") = ",
          "-2.6750",
          ", ",
          italic("p"),
          " = ",
          "0.0091",
          ", ",
          widehat(italic("d"))["Cohen"],
          " = ",
          "-0.3010",
          ", CI"["90%"],
          " [",
          "-0.4924",
          ", ",
          "-0.1115",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "79"
        )
      )

    # testing overall call
    expect_identical(using_function1$expression[[1]], results1)
    expect_identical(using_function2$expression[[1]], results2)
  }
)

# non-parametric -----------------------------------------------------------

test_that(
  desc = "one_sample_test non-parametric works",
  code = {
    skip_if(getRversion() < "4.0")

    # statsExpressions output
    set.seed(123)
    using_function <-
      suppressWarnings(one_sample_test(
        data = ToothGrowth,
        x = len,
        test.value = 20,
        type = "np",
        k = 4
      ))

    # expected output
    set.seed(123)
    results <-
      ggplot2::expr(
        paste(
          "log"["e"](italic("V")["Wilcoxon"]),
          " = ",
          "6.6247",
          ", ",
          italic("p"),
          " = ",
          "0.3227",
          ", ",
          widehat(italic("r"))["biserial"]^"rank",
          " = ",
          "-0.1486",
          ", CI"["95%"],
          " [",
          "-0.4584",
          ", ",
          "0.1206",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "60"
        )
      )

    # testing overall call
    expect_identical(using_function$expression[[1]], results)

    # statsExpressions output
    set.seed(123)
    using_function2 <-
      one_sample_test(
        data = ggplot2::msleep,
        x = names(ggplot2::msleep)[10],
        test.value = 0.25,
        type = "np",
        k = 4
      )

    results2 <-
      ggplot2::expr(
        paste(
          "log"["e"](italic("V")["Wilcoxon"]),
          " = ",
          "5.5683",
          ", ",
          italic("p"),
          " = ",
          "1.253e-05",
          ", ",
          widehat(italic("r"))["biserial"]^"rank",
          " = ",
          "-0.6717",
          ", CI"["95%"],
          " [",
          "-0.9052",
          ", ",
          "-0.4177",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "56"
        )
      )

    # testing overall call
    expect_identical(using_function2$expression[[1]], results2)
  }
)


# robust -----------------------------------------------------------

test_that(
  desc = "one_sample_test robust works",
  code = {
    skip_if(getRversion() < "4.0")

    # statsExpressions output
    set.seed(123)
    using_function <-
      one_sample_test(
        data = anscombe,
        x = "x1",
        test.value = 8,
        type = "r",
        k = 4,
        conf.level = 0.99
      )

    # expected output
    set.seed(123)
    results <-
      ggplot2::expr(
        paste(
          italic("t")["bootstrapped"],
          " = ",
          "0.7866",
          ", ",
          italic("p"),
          " = ",
          "0.3000",
          ", ",
          widehat(mu)["trimmed"],
          " = ",
          "9.0000",
          ", CI"["99%"],
          " [",
          "3.8097",
          ", ",
          "14.1903",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "11"
        )
      )

    # testing overall call
    expect_identical(using_function$expression[[1]], results)

    # statsExpressions output
    set.seed(123)
    using_function2 <-
      one_sample_test(
        data = ggplot2::msleep,
        x = brainwt,
        test.value = 0.1,
        type = "r",
        k = 4,
        conf.level = 0.90
      )

    # expected output
    set.seed(123)
    results2 <-
      ggplot2::expr(
        paste(
          italic("t")["bootstrapped"],
          " = ",
          "-3.8075",
          ", ",
          italic("p"),
          " = ",
          "0.0200",
          ", ",
          widehat(mu)["trimmed"],
          " = ",
          "0.0390",
          ", CI"["90%"],
          " [",
          "0.0112",
          ", ",
          "0.0667",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "56"
        )
      )

    # testing overall call
    expect_identical(using_function2$expression[[1]], results2)
  }
)

# bayes factor -----------------------------------------------------------

test_that(
  desc = "one_sample_test bayes factor works",
  code = {
    skip_if(getRversion() < "4.0")

    # extracting results from where this function is implemented
    set.seed(123)
    df_results <-
      one_sample_test(
        type = "bayes",
        data = iris,
        x = Petal.Length,
        y = NULL,
        test.value = 5.5,
        bf.prior = 0.99,
      )

    # check Bayes factor values
    expect_equal(df_results$bf10[[1]], 5.958171e+20, tolerance = 0.001)

    # extracting subtitle (without NA)
    set.seed(123)
    subtitle <-
      one_sample_test(
        type = "bayes",
        data = iris,
        x = "Petal.Length",
        y = NULL,
        test.value = 5.5,
        bf.prior = 0.99,
        conf.level = 0.90
      )

    expect_type(subtitle$expression[[1]], "language")

    expect_identical(
      subtitle$expression[[1]],
      ggplot2::expr(
        paste(
          "log"["e"] * "(BF"["01"] * ") = " * "-47.84" * ", ",
          widehat(italic(delta))["difference"]^"posterior" * " = " * "1.76" * ", ",
          "CI"["90%"]^"HDI" * " [" * "1.52" * ", " * "1.99" * "], ",
          italic("r")["Cauchy"]^"JZS" * " = " * "0.99"
        )
      )
    )

    # extracting subtitle (with NA)
    set.seed(123)
    subtitle2 <-
      one_sample_test(
        type = "bayes",
        data = ggplot2::msleep,
        x = brainwt,
        y = NULL,
        test.value = 0.25,
        bf.prior = 0.9,
        k = 3,
        conf.method = "eti"
      )

    expect_identical(
      subtitle2$expression[[1]],
      ggplot2::expr(
        paste(
          "log"["e"] * "(BF"["01"] * ") = " * "2.125" * ", ",
          widehat(italic(delta))["difference"]^"posterior" * " = " * "-0.018" * ", ",
          "CI"["95%"]^"HDI" * " [" * "-0.265" * ", " * "0.242" * "], ",
          italic("r")["Cauchy"]^"JZS" * " = " * "0.900"
        )
      )
    )
  }
)
