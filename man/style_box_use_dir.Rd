% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/style_box_use.R
\name{style_box_use_dir}
\alias{style_box_use_dir}
\title{Style the box::use() calls for a directory}
\usage{
style_box_use_dir(
  path = ".",
  recursive = TRUE,
  exclude_files = NULL,
  exclude_dirs = c("packrat", "renv"),
  indent_spaces = 2,
  trailing_commas_func = FALSE
)
}
\arguments{
\item{path}{Path to a directory with files to style.}

\item{recursive}{A logical value indicating whether or not files in sub-directories}

\item{exclude_files}{\emph{Not yet implemented}}

\item{exclude_dirs}{A character vector of directories to exclude.}

\item{indent_spaces}{An integer scalar indicating tab width in units of spaces}

\item{trailing_commas_func}{A boolean to activate adding a trailing comma to the end of the lists
of functions to attach.}
}
\description{
Style the box::use() calls for a directory
}
\details{
Refer to \code{\link[=style_box_use_text]{style_box_use_text()}} for styling details.
}
\examples{
\dontrun{
style_box_use_dir("path/to/dir")
}

}
