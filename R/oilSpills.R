#' Petroleum Oil Spills Impacting Navigable US Waters
#'
#' A dataset containing yearly gallons spilled, number of incidents, and source type
#' of oil spills from 1985, 1990, 1995-2020.
#'
#'@format A data frame with 280 rows and 4 variables:
#' * Year: year of spill
#' * Source: source of spill
#' * Incidents: number of incidents of the source for that year
#' * Gallons spilled: number of gallons of oil spilled of that source for that year
#'
#'@examples 
#' oilSpills %>% group_by(Year) %>% summarize(Gallons = sum(`Gallons spilled`))
#'
#'@source \url{https://www.bts.gov/content/petroleum-oil-spills-impacting-navigable-us-waters}
#'

"oilSpills"