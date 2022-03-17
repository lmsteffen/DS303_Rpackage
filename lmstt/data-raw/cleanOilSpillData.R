library(tidyverse)
library(tidyxl)
library(unpivotr)
library(readxl)
library(stringi)

oilSpills <- xlsx_cells('./data-raw/oilSpillsUS.xlsx') %>%   #convert to cell format so that tidyxl and unpivotr work
  filter(row != 1) %>%        #first row is title of the table
  select(row, col, data_type, character, numeric)   #select the columns containing data and its location

oilSpills <- oilSpills %>%
  behead("up-left", Year) %>%  #behead Year
  filter(row < 14)  %>%   #last rows are metadata so filter them out
  behead("up", Value) %>%  #behead Incidents and Gallons spilled
  behead('left', Source) %>%  #behead Source
  pivot_wider(names_from = Value, values_from = numeric) #pivot wider so there is a column for Incidents and Gallons spilled

oilSpills <- oilSpills %>%
  select(Year, Source, Incidents, `Gallons spilled`) %>%
  group_by(Year, Source) %>%
  summarise_all(list(~trimws(paste(., collapse = '')))) %>% #merge rows together
  ungroup()

oilSpills$Incidents <- gsub('.{2}$', '', oilSpills$Incidents) %>%  #trim NAs
  as.numeric() %>% #convert string to double
  suppressWarnings()  #suppress warnings, there should be some NAs
oilSpills$`Gallons spilled` <- gsub('^[A-Za-z]{2}', '', oilSpills$`Gallons spilled`) %>% #trim NAs
  as.numeric() %>% #convert string to double
  suppressWarnings()   #suppress warnings, there should be some NAs

usethis::use_data(oilSpills)
