#' Population, GDP, Year
#'
#' A dataset containing countries, country codes, life expectancy, GDP per capita, and Population for year from 1950 to 2019
#'
#' @format A data frame with 60067 rows and 7 variables:
#'  *Entity Country names
#'  *Code Country code (AFG for Afghanistan)
#'  *Year when the data was collected
#'  *Life_expectancy Life expectancy
#'  *GDP_per_capita GDP per capita
#'  *145446-annotations not sure... should be ignored
#'  *population_historical_estimates Population
#'  *continent Continent of which the country belongs to
#'
#' @examples mean_life_expectancy <- mean(le$life_expectancy)
#' 
#' @source \url{https://ourworldindata.org/grapher/life-expectancy-vs-gdp-per-capita}
"le"
