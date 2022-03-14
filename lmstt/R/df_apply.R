#' Apply functions to data frame
#'
#' @param .data A character vector with, at most, one element.
#' @inheritParams stringr::str_split
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' str_split_one(x, pattern = ",")
#' str_split_one(x, pattern = ",", n = 2)
#'
#' y <- "192.168.0.1"
#' str_split_one(y, pattern = stringr::fixed("."))

df_apply <- function(.data, .f, .condition, .else, ...) {
  .data |> map_df( ~ if (is.numeric(.)) round(., digits) else .)
}
