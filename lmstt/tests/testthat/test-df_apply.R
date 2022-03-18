n <- 7L
TestData <-
  dplyr::tibble( double = c(1.5, 2.3, 4.6, 8.8, 10.4, 1.3, 4.3),
          x = 123400 / 10^(1L:n),
          integer = (1L:n) * (1L:n),
          character = LETTERS[1L:n],
          factor = factor(letters[1L:n]),
          logical = rep(c(TRUE, FALSE), length.out = n))


testthat::test_that("It successfully apply round(digit = 0) to numeric values.", {
  testthat::expect_equal(TestData |> df_apply(round, is.numeric, return, digit = 0), 
               TestData |> dplyr::mutate(double = c(2, 2, 5, 9, 10, 1, 4),
                                         x = c(12340, 1234, 123, 12, 1, 0, 0)))
})

testthat::test_that("It successfully apply round(digit = 2) to numeric values.", {
  testthat::expect_equal(TestData |> df_apply(round, is.numeric, return, digit = 2), 
                         TestData |> dplyr::mutate(double = c(1.5, 2.3, 4.6, 8.8, 10.4, 1.3, 4.3),
                                                   x = c(12340, 1234, 123.40, 12.34, 1.23, 0.12, 0.01)))
})
