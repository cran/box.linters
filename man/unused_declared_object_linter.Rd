% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unused_declared_object_linter.R
\name{unused_declared_object_linter}
\alias{unused_declared_object_linter}
\title{Unused declared function and data objects linter}
\usage{
unused_declared_object_linter()
}
\value{
A custom linter function for use with \code{r-lib/lintr}.
}
\description{
Checks that all defined/declared functions and data objects are used within the source file.
Functions and data objects that are marked with \code{@export} are ignored.
}
\details{
For use in \code{rhino}, see the
\href{https://appsilon.github.io/rhino/articles/explanation/rhino-style-guide.html}{Explanation: Rhino style guide}
to learn about the details.
}
\examples{
# will produce lint
code <- "
#' @export
public_function <- function() {

}

private_function <- function() {

}

local_data <- \"A\"
"

lintr::lint(text = code, linters = unused_declared_object_linter())

# okay
code <- "
#' @export
public_function <- function() {
  some_variable <- local_data
  private_function()
}

private_function <- function() {

}

local_data <- \"A\"
"

lintr::lint(text = code, linters = unused_declared_object_linter())

}
