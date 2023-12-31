% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/listings_classes_IQdataNCA.R
\name{rawlisting_PKconc_IQdataNCA}
\alias{rawlisting_PKconc_IQdataNCA}
\title{Generates lising of individual PK concentrations for a single split of the IQdataNCA}
\usage{
rawlisting_PKconc_IQdataNCA(
  d,
  table_number = NULL,
  split_index = 1,
  table_split_by,
  table_head,
  table_cols,
  labels,
  roundfun = signif,
  digits = NULL,
  filename = NULL
)
}
\arguments{
\item{d}{IQncaData object to be display in one split}

\item{table_number}{Character string with listing number information, added to the title for each table, if defined}

\item{split_index}{Number of current split}

\item{table_split_by}{Column that the split was done by (for labelling)}

\item{table_head}{Column names of covariates unique within splits to be displayed above the table}

\item{table_cols}{Column names to be displayed as table columns}

\item{labels}{Named vector with labels that should be used for column names or as name for the common covariates.}

\item{roundfun}{Rounding function (expecting the numeric vector and number of digits to be input arguments). Defaults to \link{signif}. Suggested alternative is \link{round}.}

\item{digits}{Named vector with digits to be used for rounding for different columns}

\item{filename}{Filename to export the listing IQRrmd object to}
}
\value{
IQncaTable object
}
\description{
IGNORER records are REALLY not reported ... so that should be HANDLED WITH CARE!
}
