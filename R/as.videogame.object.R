#' Convert a row into a videogame object
#'
#' This function assigns the class "videogame" to a single row from a video 
#' game dataset,
#' allowing custom S3 methods to be used with the object.
#'
#' @param row A single-row data frame representing one video game.
#'
#' @return A data frame with class "videogame".
#' @export


videogame <- function(row) {
  class(row) <- "videogame"
  return(row)
}
