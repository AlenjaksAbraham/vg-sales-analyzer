#' Show sales over time by region
#'
#' Produces a year-by-year breakdown of video game sales for a given region,
#' along with a line plot of the trend using ggplot2.
#'
#' @param VideoGames A data frame with video game sales data.
#' @param region A string specifying the region ("Global", "NA", "EU", "JP", "Other").
#'
#' @return A printed table and a plot of sales by year.
#' @export



sales.over.time <- function(VideoGames, region = "Global") {

library(ggplot2)
  
# Aggregate by year
  
  if (region == "Global") {
    sales <- aggregate(Global_Sales ~ Year, VideoGames, sum)
  } else if (region == "NA") {
    sales <- aggregate(NA_Sales ~ Year, VideoGames, sum)
  } else if (region == "EU") {
    sales <- aggregate(EU_Sales ~ Year, VideoGames, sum)
  } else if (region == "JP") {
    sales <- aggregate(JP_Sales ~ Year, VideoGames, sum)
  } else if (region == "Other") {
    sales <- aggregate(Other_Sales ~ Year, VideoGames, sum)
  }
  
  names(sales)[2] <- "Sales"
  print(sales)
  
# Plot 
  ggplot(sales, aes(Year, Sales)) +
    labs(title = paste(region, "Sales Over Time"),
         x = "Year", y = "Sales in Millions($) ") +
    geom_line() +
    geom_point() +
    theme(axis.text.x = element_text(angle = 45, vjust= 1, hjust = 1))
}





