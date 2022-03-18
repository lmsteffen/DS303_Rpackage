#' Population, GDP, Year
#'
#' A dataset containing countries, country codes, life expectancy,
#' GDP per capita, and Population for year from 1950 to 2019
#'
#' @format A data frame with 60067 rows and 7 variables:
#' \describe{
#'   \item{Entity}{Country names}
#'   \item{Code}{Country code (AFG for Afghanistan)}
#'   \item{Year}{Year when the data was collected}
#'   \item{Life expectancy}{Life expectancy}
#'   \item{GDP per capita}{GDP per capita}
#'   \item{145446-annotations}{not sure... should be ignored}
#'   \item{population_historical_estimates}{Population}
#'   \item{continent}{Continent of which the country belongs to}
#'   }
#' @examples
#' mean_life_expectancy <- mean(le$life_expectancy)
#' @source \url{https://ourworldindata.org/grapher/life-expectancy-vs-gdp-per-capita"
"le"

