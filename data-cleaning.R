## Loading packages / bringing in data ----------------------------------------
library(tidyverse)
library(readxl)

nba_18_basic <- read_excel('data-raw/nba-basic.xlsx')
nba_18_advanced <- read_excel('data-raw/nba-advanced.xlsx')