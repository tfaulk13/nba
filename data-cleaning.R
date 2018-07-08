## Loading packages / bringing in data ----------------------------------------
library(tidyverse)
library(readxl)
library(ballr)

nba_18_basic <- NBAPerGameStatistics(season = 2018)
nba_18_advanced <- NBAPerGameAdvStatistics(season = 2018)

## Joining and cleaning data --------------------------------------------------
nba_18 <- left_join(nba_18_basic, nba_18_advanced, by = c('rk', 'player', 'pos', 'age', 'tm', 'g', 'mp'))


