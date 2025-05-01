#' Top Selling Games by Region
#'
#' Displays the highest selling video games for a specific region.
#'
#' You can choose from Global, North America (NA), Europe (EU), Japan (JP), or 
#' Other regions.
#' The output includes the game title, platform, release year, genre, publisher,
#' and sales.
#'
#' @param VideoGames A data frame containing video game sales data.
#' @param n Number of top games to return. Set at 10. 
#' @param region A string indicating the region: "Global", "NA", "EU", "JP", or "Other".
#' 
#'
#' @return A data frame with the top \code{n} selling games for the specified region.
#' @export
#' 
#' 
#' 
top.selling.games <- function(VideoGames, n = 10, region = "Global") {
  region.column <- switch(
    region,
    "NA" = "NA_Sales",
    "EU" = "EU_Sales",
    "JP" = "JP_Sales",
    "Other" = "Other_Sales",
    "Global" = "Global_Sales",
  )
  
  top.games <- VideoGames[order(-VideoGames[[region.column]]), ]
  return(head(top.games[, c("Name", "Platform", "Year", "Genre", "Publisher", region.column)], n))
}



