oilSpills <- tidyxl::xlsx_cells('oilSpillsUS.xlsx') %>%   #convert to cell format so that tidyxl and unpivotr work
  dplyr::filter(row != 1) %>%        #first row is title of the table
  dplyr::select(row, col, data_type, character, numeric)   #select the columns containing data and its location

oilSpills <- oilSpills %>%
  unpivotr::behead("up-left", Year) %>%  #behead Year
  dplyr::filter(row < 14)  %>%   #last rows are metadata so filter them out
  unpivotr::behead("up", Value) %>%  #behead Incidents and Gallons spilled
  unpivotr::behead('left', Source) %>%  #behead Source
  tidyr::pivot_wider(names_from = Value, values_from = numeric) #pivot wider so there is a column for Incidents and Gallons spilled

oilSpills <- oilSpills %>%
  dplyr::select(Year, Source, Incidents, `Gallons spilled`) %>%
  dplyr::group_by(Year, Source) %>%
  dplyr::summarise_all(list(~trimws(paste(., collapse = '')))) %>% #merge rows together
  dplyr::ungroup()

oilSpills$Incidents <- gsub('.{2}$', '', oilSpills$Incidents) %>%  #trim NAs
  as.numeric() %>% #convert string to double
  suppressWarnings()  #suppress warnings, there should be some NAs
oilSpills$`Gallons spilled` <- gsub('^[A-Za-z]{2}', '', oilSpills$`Gallons spilled`) %>% #trim NAs
  as.numeric() %>% #convert string to double
  suppressWarnings()   #suppress warnings, there should be some NAs

usethis::use_data(oilSpills)
