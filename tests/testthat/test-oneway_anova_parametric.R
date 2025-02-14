# parametric anova subtitles (without NAs) -----------------------------------

test_that(
  desc = "parametric anova subtitles work (without NAs)",
  code = {


    # statsExpression output
    set.seed(123)
    using_function1 <-
      oneway_anova(
        data = dplyr::sample_frac(movies_long, 0.1),
        x = genre,
        y = rating,
        effsize.type = "eta",
        k = 5,
        var.equal = FALSE
      )

    # expected output
    results1 <-
      ggplot2::expr(
        paste(
          italic("F")["Welch"],
          "(",
          "8",
          ",",
          "46.23423",
          ") = ",
          "4.03133",
          ", ",
          italic("p"),
          " = ",
          "0.00107",
          ", ",
          widehat(eta["p"]^2),
          " = ",
          "0.41092",
          ", CI"["95%"],
          " [",
          "0.11026",
          ", ",
          "0.54317",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "158"
        )
      )

    # testing overall call
    expect_identical(using_function1$expression[[1]], results1)
  }
)

# parametric anova subtitles (partial omega) ----------------------------------

test_that(
  desc = "parametric anova subtitles with partial omega-squared",
  code = {


    # statsExpression output
    set.seed(123)
    using_function1 <-
      oneway_anova(
        data = ggplot2::msleep,
        x = vore,
        y = "sleep_rem",
        effsize.type = "unbiased",
        k = 4
      )

    # expected output
    results1 <-
      ggplot2::expr(
        paste(
          italic("F")["Welch"],
          "(",
          "3",
          ",",
          "11.1010",
          ") = ",
          "2.6325",
          ", ",
          italic("p"),
          " = ",
          "0.1017",
          ", ",
          widehat(omega["p"]^2),
          " = ",
          "0.2449",
          ", CI"["95%"],
          " [",
          "0.0000",
          ", ",
          "0.5391",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "56"
        )
      )

    # testing overall call
    expect_identical(using_function1$expression[[1]], results1)
  }
)

# parametric anova subtitles (partial eta and NAs) --------------------------

test_that(
  desc = "parametric anova subtitles with partial eta-squared and data with NAs",
  code = {

    # statsExpression output
    set.seed(123)
    using_function1 <-
      oneway_anova(
        data = ggplot2::msleep,
        x = vore,
        y = sleep_rem,
        var.equal = TRUE,
        effsize.type = "biased",
        k = 4
      )

    # expected output
    results1 <-
      ggplot2::expr(
        paste(
          italic("F")["Fisher"],
          "(",
          "3",
          ",",
          "52",
          ") = ",
          "4.1361",
          ", ",
          italic("p"),
          " = ",
          "0.0105",
          ", ",
          widehat(eta["p"]^2),
          " = ",
          "0.1926",
          ", CI"["95%"],
          " [",
          "0.0139",
          ", ",
          "0.3555",
          "]",
          ", ",
          italic("n")["obs"],
          " = ",
          "56"
        )
      )

    # testing overall call
    expect_identical(using_function1$expression[[1]], results1)
  }
)

# parametric repeated anova subtitles (basic) ---------------------------------

if (require("afex", quietly = TRUE)) {
  test_that(
    desc = "parametric anova subtitles work (without NAs)",
    code = {

      # statsExpression output
      set.seed(123)
      using_function1 <-
        oneway_anova(
          data = iris_long,
          x = "condition",
          y = value,
          paired = TRUE,
          k = 3,
          conf.level = 0.99
        )

      # expected output
      results1 <-
        ggplot2::expr(
          paste(
            italic("F")["Fisher"],
            "(",
            "1.149",
            ",",
            "171.217",
            ") = ",
            "776.318",
            ", ",
            italic("p"),
            " = ",
            "1.32e-69",
            ", ",
            widehat(omega["p"]^2),
            " = ",
            "0.707",
            ", CI"["99%"],
            " [",
            "0.653",
            ", ",
            "0.750",
            "]",
            ", ",
            italic("n")["pairs"],
            " = ",
            "150"
          )
        )

      # testing overall call
      expect_identical(using_function1$expression[[1]], results1)
    }
  )

  # too few obs -------------------------------------------------------

  test_that(
    desc = "too few obs",
    code = {
      set.seed(123)

      # dataframe
      df <-
        structure(list(
          x = c(
            30, 40, 50, 60, 70, 80, 90, 30, 40, 50,
            60, 70, 80, 90, 30, 40, 50, 60, 70, 80, 90, 30, 40, 50, 60, 70,
            80, 90, 30, 40, 50, 60, 70, 80, 90
          ),
          Participant = c(
            "FH2", "FH2",
            "FH2", "FH2", "FH2", "FH2", "FH2", "ZW", "ZW", "ZW", "ZW", "ZW",
            "ZW", "ZW", "KS", "KS", "KS", "KS", "KS", "KS", "KS", "CL", "CL",
            "CL", "CL", "CL", "CL", "CL", "AG", "AG", "AG", "AG", "AG", "AG",
            "AG"
          ),
          Method = c(
            2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
            2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
          ),
          y = c(
            2571.25, 2688.003333, 2779.363333, 2832.046667,
            3050.72, 3255.553333, 3327.173667, 1766.296667, 2107.890333,
            2391.7, 2569.24, 2680.22, 2807.59, 2807.953333, 2078.734,
            2414.366667, 2583.27, 2923.253333, 3085.96, 3094.003333,
            3121.49, 2824.990667, 2716.429667, 2844.323333, 3124.713333,
            3252.863333, 3424.24, 3674.463333, 2401.996667, 2719.046667,
            2712.99, 2951.965667, 3046.526667, 3100.902667, 3195.331333
          )
        ),
        class = c("spec_tbl_df", "tbl_df", "tbl", "data.frame"),
        row.names = c(NA, -35L),
        spec = structure(list(
          cols = list(
            x = structure(list(), class = c("collector_double", "collector")),
            Participant = structure(list(), class = c(
              "collector_character",
              "collector"
            )),
            Method = structure(list(), class = c(
              "collector_double",
              "collector"
            )),
            y = structure(list(), class = c(
              "collector_double",
              "collector"
            ))
          ),
          default = structure(list(), class = c(
            "collector_guess",
            "collector"
          )), skip = 1
        ),
        class = "col_spec"
        )
        )

      # capture the message
      set.seed(123)
      p_sub <-
        suppressWarnings(oneway_anova(
          data = df,
          x = x,
          y = y,
          paired = TRUE,
          effsize.type = "eta"
        ))

      # check that
      expect_identical(
        p_sub$expression[[1]],
        ggplot2::expr(paste(
          italic("F")["Fisher"],
          "(",
          "6.00",
          ",",
          "24.00",
          ") = ",
          "43.14",
          ", ",
          italic("p"),
          " = ",
          "1.08e-11",
          ", ",
          widehat(eta["p"]^2),
          " = ",
          "0.92",
          ", CI"["95%"],
          " [",
          "0.83",
          ", ",
          "0.95",
          "]",
          ", ",
          italic("n")["pairs"],
          " = ",
          "5"
        ))
      )
    }
  )

  # works with subject id ------------------------------------------------------

  test_that(
    desc = "works with subject id",
    code = {


      # data
      df <-
        structure(list(
          score = c(
            70, 82.5, 97.5, 100, 52.5, 62.5,
            92.5, 70, 90, 92.5, 90, 75, 60, 90, 85, 67.5, 90, 72.5, 45, 60,
            72.5, 80, 100, 100, 97.5, 95, 65, 87.5, 90, 62.5, 100, 100, 97.5,
            100, 97.5, 95, 82.5, 82.5, 40, 92.5, 85, 72.5, 35, 27.5, 82.5
          ), condition = structure(c(
            5L, 1L, 2L, 3L, 4L, 4L, 5L, 1L,
            2L, 3L, 2L, 3L, 3L, 4L, 2L, 1L, 5L, 5L, 4L, 1L, 1L, 4L, 3L, 5L,
            2L, 5L, 1L, 2L, 3L, 4L, 4L, 5L, 1L, 2L, 3L, 2L, 3L, 4L, 1L, 5L,
            3L, 2L, 5L, 4L, 1L
          ), .Label = c("1", "2", "3", "4", "5"), class = "factor"),
          id = structure(c(
            1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L,
            2L, 3L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 4L, 5L, 5L, 5L, 5L,
            5L, 6L, 6L, 6L, 6L, 6L, 7L, 7L, 7L, 7L, 7L, 8L, 8L, 8L, 8L,
            8L, 9L, 9L, 9L, 9L, 9L
          ), .Label = c(
            "1", "2", "3", "4", "5",
            "6", "7", "8", "9"
          ), class = "factor")
        ), row.names = c(
          NA,
          45L
        ), class = "data.frame")

      # incorrect
      set.seed(123)
      expr1 <-
        oneway_anova(
          data = df,
          x = condition,
          y = score,
          subject.id = id,
          paired = TRUE
        )

      # correct
      set.seed(123)
      expr2 <-
        oneway_anova(
          data = dplyr::arrange(df, id),
          x = condition,
          y = score,
          paired = TRUE
        )

      expect_equal(expr1, expr2)
    }
  )
}

# dataframe -----------------------------------------------------------

test_that(
  desc = "dataframe",
  code = {
    expect_s3_class(
      oneway_anova(
        data = mtcars,
        x = cyl,
        y = wt
      ),
      "tbl_df"
    )
  }
)
