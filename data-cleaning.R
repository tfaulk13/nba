## Loading packages / bringing in data ----------------------------------------
library(tidyverse)
library(readxl)

nba_18_basic <- read_excel('data-raw/nba-basic.xlsx')
nba_18_advanced <- read_excel('data-raw/nba-advanced.xlsx')

## Joining and cleaning data --------------------------------------------------
nba_18 <- left_join(nba_18_basic, nba_18_advanced, by = c('Player', 'Pos', 'Age', 'Tm', 'G', 'MP'))

nba_18 <- nba_18 %>%
  separate('Player', into = c('Player', 'Temp'), sep = '\\\\') %>%
  select(-Temp)
