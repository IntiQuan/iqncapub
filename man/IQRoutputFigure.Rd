% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compliance_tools.R
\name{IQRoutputFigure}
\alias{IQRoutputFigure}
\title{Create IQRoutputFigure object and/or print graph object to file}
\usage{
IQRoutputFigure(
  x = NULL,
  title = NULL,
  subtitle = NULL,
  footer = NULL,
  filename = NULL,
  FLAGreport = FALSE,
  opt.pagesize = list(width = 21/2.54, height = 21/2.54 * 3/4, scale = 1, scaleWidth =
    1, scaleHeight = 1, res = 300),
  opt.layout = list(nrow = NULL, ncol = NULL, npage = NULL, legend.option = c("as.is",
    "remove", "first.on.page"), legend.object = NULL, legend.position = "right",
    legend.relsize = 0.2, title.relheight = 0.05, subtitle.relheight = 0.05,
    footer.relheight = 0.05),
  ...
)
}
\arguments{
\item{x}{(list of) ggplot object(s) or IQRoutputFigure object.}

\item{title}{Character string with figure title}

\item{subtitle}{Character string with figure subtitle}

\item{footer}{Character string with figure footer}

\item{filename}{Filename with either .pdf or .png suffix}

\item{FLAGreport}{Flag whether figure annotation for reporting is prepared}

\item{opt.pagesize}{List with page size settings for plotting to pngor pdf device (see \link{opt.pagesize})}

\item{opt.layout}{List with further settings for page layout (see \link{opt.layout})}

\item{...}{Additional arguments passed to IQRoutputPDF or IQRoutputPNG}
}
\value{
IQRoutputFigure object. (If filename given, graph is printed to file)
}
\description{
This function allows to print a (list of) figure(s), i.e, plot objects,
as png or pdf. The figures are arranged in given number of rows and columns
potentially across several pages (or files in case of png's). A common title,
subtitle, footer, and potentially legend is plotted on each page.
Alternatively to a list of plot object, an IQRoutputFigure object (see Details)
can be the input to this function.
}
\details{
In case, a pdf of png file is created, the figures are distributed to rows, columns,
and pages and title, subtitle, footer, and legend are added using the function
\link{createPages_IQRoutputFigure}. The resulting list of plot objects is printed using
\link{IQRoutputPDF} or \link{IQRoutputPNG} depending on the encountered file ending.

In any case, the function will return an object of class \code{IQRoutputFigure} that stores
the plots, page layout and plot dimension information that the user provided. The object,
a list, contains the following fields:
\itemize{
\item \code{content}: (list of) plot object(s)
\item \code{title}: Common title (string) to be printed on top of page, optional.
\item \code{subtitle}: Common subtitle (string) to be printed below title, optional.
\item \code{footer}: Common footer (string) to be printed at bottom of page, optional.
\item \code{legend}: User-provided legend (gtable object), optional
\item \code{filename}: File to which the figure was printed if a filename was
provided when the IQRoutputFigure function was called, optional.
\item \code{opt.layout}: list with layout options (nrow, ncol, npage, FLAGlegend,
legend.position, legend.relsize, title.relheight, subtitle.relheight
footer.relheight). See \link{createPages_IQRoutputFigure}. optional
\item \code{opt.pagesize}: list with page dimension/resolution options (width, height, scale,
scaleWidth, scaleHeight, res). See \link{IQRoutputPDF} and
\link{IQRoutputPNG}. optional
}

If the input was an IQRoutputFigure, existing fields will be overwritten or
extended and/or non-existing fields added by arguments given. Note that
if a field existed and no new corresponding input was given, this field
is kept as is.
}
\examples{
\dontrun{
  # Generate list with 10 figures
  grList <- lapply(1:10, function(i) {
     dat <- data.frame(x=rnorm(100), y = runif(100), label = rep(c("Blue", "Red")))
     ggplot(dat, aes(x,y,color = label)) +
       geom_point() +
       scale_color_manual(values = c("Blue" = "firebrick", "Red" = "navyblue"))
  })
  # Print to pdf
  figobj <- IQRoutputFigure(
    x = grList,
    title = "10 plots with random numbers",
    subtitle = "plots are distributed to 3 columns and 2 rows",
    footer = "note the color confusion",
    nrow = 2, ncol = 3, filename = "Example.pdf"
  )
  # Inspect the object
  names(figobj)
  # Clean up
  unlink("Example.pdf")
}
}
\seealso{
Other Output & Compliance: 
\code{\link{IQRinitCompliance}()},
\code{\link{IQRoutputCSV}()},
\code{\link{IQRoutputFile}()},
\code{\link{IQRoutputPDFend}()},
\code{\link{IQRoutputPDFstart}()},
\code{\link{IQRoutputPDF}()},
\code{\link{IQRoutputPNG}()},
\code{\link{IQRoutputRDS}()},
\code{\link{IQRoutputTable}()},
\code{\link{IQRoutputValueTable}()},
\code{\link{IQRoutputXPT}()}
}
\author{
Anne Kümmel, IntiQuan
}
\concept{Output & Compliance}
