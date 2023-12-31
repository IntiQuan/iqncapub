% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nca_classes_IQRdataNCA.R
\name{table_summary_conc_IQdataNCA}
\alias{table_summary_conc_IQdataNCA}
\title{Generate a table of statistical summaries of pharmacokinetic concentrations}
\usage{
table_summary_conc_IQdataNCA(
  data,
  tablenumber = NULL,
  fontsizetable = 8,
  filename = "table_summary_concentrations",
  SIGNIF = 4,
  maxCol = 10
)
}
\arguments{
\item{data}{IQdataNCA object}

\item{tablenumber}{Character string with table number information, added to the title for each table, if defined}

\item{fontsizetable}{Fontsize to be used in the table}

\item{filename}{Filename to export the listing IQRrmd object to}

\item{SIGNIF}{Significant digits for table values}

\item{maxCol}{Number of nominal times to be put into the same table in case of simple=TRUE. Tables might become to wide even for landscape
so a plit up of columns in several tables can be enforced in this manner.}
}
\value{
An IQRrmd object exported to a file
}
\description{
The table will be generated already as an IQRrmd object, allowing easy reporting in Word with IQReport.
The table is done per PROFILE and GROUP.
Important: Ignored records (INGORER & IGNORSUM) are not reported in these tables! Ignored subjects (IGNOREI) are
removed as well.
}
\seealso{
Other NCA Data Tables: 
\code{\link{table_summary_conc_by_time_IQdataNCA}()}
}
\concept{NCA Data Tables}
