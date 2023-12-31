% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataprogramming_tools.R
\name{date2dateday_IQRdataProgramming}
\alias{date2dateday_IQRdataProgramming}
\title{Conversion of date/time in string format to day in string format}
\usage{
date2dateday_IQRdataProgramming(
  dateString,
  format = "\%Y-\%m-\%dT\%H:\%M",
  formatday = "\%Y-\%m-\%d"
)
}
\arguments{
\item{dateString}{Vector of dates/times in string format}

\item{format}{Format of the date/time information, defined as the format for as.POSIXxt()}

\item{formatday}{Format for the day date string, defined as format for as.POSIXct()}
}
\value{
Vector of date strings
}
\description{
Conversion of date/time in string format to day in string format
}
