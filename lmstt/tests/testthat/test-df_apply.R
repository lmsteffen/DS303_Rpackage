n <- 7L
TestData <-
  dplyr::tibble( double = c(1.5, 2.3, 4.6, 8.8, 10.4, 1.3, 4.3),
          x = 123400 / 10^(1L:n),
          integer = (1L:n) * (1L:n),
          character = LETTERS[1L:n],
          factor = factor(letters[1L:n]),
          logical = rep(c(TRUE, FALSE), length.out = n))


testthat::test_that("It works for double", {
  expect_equal(TestData |> df_apply(round, is.numeric, return, digit = 0), 
               TestData |> dplyr::mutate(double = c(2, 2, 5, 9, 10, 1, 4)))
})

