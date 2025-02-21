#' Apply functions to data frame
#' 
#' Apply functions to data frame
#'
#' @param .data A data frame
#' @param .f a function
#' @param .condition a condition function
#' @param .else a function to apply when .condition() evaluates to FALSE
#' @param ... additional arguments that will be passed to .f()
#'
#' @return A data frame
#' @export
#'
#' @importFrom purrr map_df
#'
#' @examples
#' df_apply(iris, round, is.numeric, identity, digit = 1)
#'

df_apply <- function(.data, .f, .condition = is.numeric, .else = identity, ...) {
  .data |> purrr::map_df(
    function(.x){
      if (.condition(.x)) .f(.x, ...) else (.else(.x))
      }
    )
}
