% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDaymet.R
\name{getDaymet}
\alias{getDaymet}
\title{Downloads dayment data for fish and bug sites}
\usage{
getDaymet(
  siteId,
  file = paste0("data/daymet/", siteId, ".csv"),
  startDate = "1980-01-01",
  endDate = Sys.Date()
)
}
\arguments{
\item{siteId}{A site ID in the sites table from the database that has lat/long data associated with it}

\item{file}{A file location to save the downloaded data}

\item{startDate}{character date in the format YYYY-MM-DD defining the start of the time period to download}

\item{endDate}{character date in the format YYYY-MM-DD defining the end of the time period to download}
}
\value{
Saves daymet temperature and precipitation data to the specified path
}
\description{
Downloads dayment data for fish and bug sites
}
