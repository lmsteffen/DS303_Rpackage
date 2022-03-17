le <- read.csv("data-raw/life_expectancy_data.csv") %>%
  janitor::clean_names() %>%
  na.omit() %>%
  filter(entity != "World",
         year >= 1950)

le <- le %>%
  mutate(continent = case_when
         (entity %in% c("Algeria", "Angola", "Benin", "Botswana",
                        "Burkina Faso", "Burundi", "Cameroon", "Cape Verde",
                        "Central African Republic", "Chad", "Comoros", "Congo",
                        "Cote d'Ivoire", "Democratic Republic of Congo",
                        "Djibouti", "Egypt", "Equatorial Guinea", "Eswatini",
                        "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea",
                        "Guinea-Bissau", "Kenya", "Lesotho", "Liberia", "Libya",
                        "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius",
                        "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda",
                        "Sao Tome and Principe", "Senegal", "Seychelles",
                        "Sierra Leone", "South Africa", "Sudan", "Tanzania", "Togo",
                        "Tunisia", "Uganda", "Zambia", "Zimbabwe"
         )
           ~ "Africa",

           entity %in% c("Barbados", "Canada", "Costa Rica", "Cuba", "Dominica",
                         "Dominican Republic", "El Salvador", "Guatemala", "Haiti",
                         "Honduras", "Jamaica", "Mexico", "Nicaragua",
                         "Panama", "Puerto Rico", "Saint Lucia",
                         "Trinidad and Tobago", "United States"
           )
           ~ "North America",

           entity %in% c("Argentina", "Bolivia", "Brazil", "Chile", "Colombia",
                         "Ecuador", "Paraguay", "Peru", "Uruguay", "Venezuela"
           )
           ~ "South America",

           entity %in% c("Afghanistan", "Azerbaijan", "Bahrain", "Bangladesh",
                         "Cambodia", "China", "Cyprus", "Georgia", "Hong Kong",
                         "India", "Indonesia", "Iran", "Iraq", "Israel", "Japan",
                         "Jordan", "Kazakhstan", "Kuwait", "Kyrgyzstan", "Laos",
                         "Lebanon", "Malaysia", "Moldova", "Mongolia", "Myanmar",
                         "Nepal", "North Korea", "Oman", "Pakistan", "Palestine",
                         "Philippines", "Qatar", "Saudi Arabia", "Singapore",
                         "South Korea", "Sri Lanka", "Syria", "Taiwan", "Tajikistan",
                         "Thailand", "Turkey", "Turkmenistan", "United Arab Emirates",
                         "Uzbekistan", "Vietnam", "Yemen"
           )
           ~ "Asia",

           entity %in% c("Albania", "Armenia", "Austria", "Belarus", "Belgium",
                         "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Czechia",
                         "Denmark", "Estonia", "Finland", "France", "Germany",
                         "Greece", "Iceland", "Ireland", "Italy", "Latvia",
                         "Lithuania", "Luxembourg", "Malta", "Montenegro",
                         "Netherlands", "North Macedonia", "Norway", "Poland",
                         "Portugal", "Romania", "Serbia", "Slovakia", "Slovenia",
                         "Spain", "Sweden", "Switzerland", "Ukraine",
                         "United Kingdom", "Hungary"
           )
           ~ "Europe",

           entity %in% c("Australia", "New Zealand"
           )
           ~ "Oceania"
         ))

usethis::use_data(le)
