#' Extract custom information from a model object and turn it into a tidy
#' tibble with a single row.
#'
#' glance_custom methods always return either a one-row data frame (except on
#'  `NULL`, which returns an empty data frame). This 
#'
#' @param x model or other R object to convert to single-row data frame
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("glance")}
#'
#' @export
glance_custom <- function(x) {
  UseMethod("glance_custom")
}


#' @inherit glance_custom
#' @keywords internal
#' @export
glance_custom.default <- function(x) NULL
