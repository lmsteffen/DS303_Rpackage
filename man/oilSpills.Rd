% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oilSpills.R
\docType{data}
\name{oilSpills}
\alias{oilSpills}
\title{Petroleum Oil Spills Impacting Navigable US Waters}
\format{
A data frame with 280 rows and 4 variables:
\itemize{
\item Year: year of spill
\item Source: source of spill
\item Incidents: number of incidents of the source for that year
\item Gallons spilled: number of gallons of oil spilled of that source for that year
}
}
\source{
\url{https://www.bts.gov/content/petroleum-oil-spills-impacting-navigable-us-waters}
}
\usage{
oilSpills
}
\description{
A dataset containing yearly gallons spilled, number of incidents, and source type
of oil spills from 1985, 1990, 1995-2020.
}
\examples{
oilSpills |> dplyr::group_by(Year) |> dplyr::summarize(Gallons = sum(`Gallons spilled`))

}
\keyword{datasets}
