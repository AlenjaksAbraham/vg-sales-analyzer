vgSalesAnalyzer


📦 Package Summary
vgSalesAnalyzer is an R pacakge that provides tools for exploring and analyzing video game sales data, with a focus on simplicity, clarity, and regional insights. It includes functions for summarizing top-selling games, visualizing sales trends over time, and working with both S3 and S4 representations of individual video game records. 







📄 Function Overview


**sales.over.time:**
What it does:
Aggregates video game sales by year for a selected region ("Global", "NA", "EU", "JP", or "Other").

Output:
A printed data frame of yearly sales and a line plot (using ggplot2) showing trends over time.


**top.selling.games:**
What it does:
Sorts and returns the top best-selling video games in a given region.

Output:
A table of the top games with columns like name, platform, year, genre, publisher, and sales.


**as.videogame.object:**
What it does:
Constructs a formal S3 object of class "VideoGame", which produces a single-row data frame representing one video gam


**build.videogame.class:**
What it does:
Creates a new S4 object of class "VideoGame" using the provided values for the game's name, platform, and global sales.


🔧  How to Install the Package

#Install devtools

install.packages("devtools")

devtools::install_github("AlenjaksAbraham/vgSalesAnalyzer")

library(vgSalesAnalyzer)




