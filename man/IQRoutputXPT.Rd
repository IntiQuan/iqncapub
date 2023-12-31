% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compliance_tools.R
\name{IQRoutputXPT}
\alias{IQRoutputXPT}
\title{Export general data.frame object as XPT file}
\usage{
IQRoutputXPT(data, filename = NULL, addColLabels = NULL)
}
\arguments{
\item{data}{data.frame to export as XPT}

\item{filename}{Filename of the XPT file to create (not more than 8 characters without extension)}

\item{addColLabels}{List with named elements. Names are column names and
the value of an element is the label. If defining addColLabels for columns that
are already handled automatically, the provided labels will overwrite the automatic ones.
Example: \code{addColLabels <- list(IXGDF="Other label",NEWCCOL="Label for NEWCOL")}}
}
\description{
A data.frame object can be exported to a SAS XPT file.
Additionally, labels can be provided with the addColLabels input argument.
}
\seealso{
Other General Data I/O: 
\code{\link{IQRloadCSVdata}()},
\code{\link{IQRloadSASdata}()},
\code{\link{IQRoutputCSV}()},
\code{\link{IQRsaveCSVdata}()}

Other Output & Compliance: 
\code{\link{IQRinitCompliance}()},
\code{\link{IQRoutputCSV}()},
\code{\link{IQRoutputFigure}()},
\code{\link{IQRoutputFile}()},
\code{\link{IQRoutputPDFend}()},
\code{\link{IQRoutputPDFstart}()},
\code{\link{IQRoutputPDF}()},
\code{\link{IQRoutputPNG}()},
\code{\link{IQRoutputRDS}()},
\code{\link{IQRoutputTable}()},
\code{\link{IQRoutputValueTable}()}
}
\concept{General Data I/O}
\concept{Output & Compliance}
