% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report_classes_IQRrmd.R
\name{rmdSECref}
\alias{rmdSECref}
\title{Section Cross reference}
\usage{
rmdSECref(label, caption = NULL)
}
\arguments{
\item{label}{Character string, specifying the label of the section. Labels are limited to
40 characters and should not include whitespaces.}

\item{caption}{A character string with alernative text to show (instead of "Section x.y.z").}
}
\value{
Section cross reference command as IQRrmd object
}
\description{
Allows to reference a section by the section label.
"@SEC\href{label}{caption}"
}
