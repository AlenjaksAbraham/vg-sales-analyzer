#' S4 class representing a video game
#'
#' The VideoGame class stores information about a single video game, including
#' its name, platform, and global sales in millions.
#'
#' @slot name The name of the video game.
#' @slot platform The platform the game was released on.
#' @slot sales The number of millions of units sold globally.
#'
#' @export


setClass("VideoGame",
         slots = list(
           name = "character",
           platform = "character",
           sales = "numeric"
         ))


