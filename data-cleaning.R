## Libraries ------------------------------------------------------------------
library(tidyverse)
library(lubridate)
library(rvest)

# Function to load team ratings tables ----------------------------------------
load_html_table <- function(url) {
  # Reading in HTML file
  html <- read_html(url)
  
  # Grabbing table
  table <- html %>%
    html_table() %>%
    .[[1]]
  
  # Combining first row w/ header to get column names
  names(table) <- paste0(names(table), table[1,])
  
  # Removing first row (had second half of headers)
  table <- table %>% .[-1,]
  
  table
}

# Loading data ----------------------------------------------------------------

# Web addresses for table
team_ratings_2020 <- 'https://www.basketball-reference.com/leagues/NBA_2020_ratings.html'
team_ratings_2021 <- 'https://www.basketball-reference.com/leagues/NBA_2021_ratings.html'

df_2020 <- load_html_table(team_ratings_2020)
df_2021 <- load_html_table(team_ratings_2021)

