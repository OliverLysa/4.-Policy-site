setwd("/Users/oliverlysaght/Desktop/R/WPP/WEEE/EA")

# WEEE Collected

# Specify URL where file is stored
url <- "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/913175/WEEE_collected_in_the_UK.ods"

# Specify destination where file should be saved
destfile <- "/Users/oliverlysaght/Desktop/R/WPP/WEEE/EA/WEEE_collected.ods"

# Apply download.file function in R
download.file(url, destfile)

# 2020
EEE20 <-
  read_ods("WEEE_collected.ods", sheet = 1) %>% as.data.frame()

HEEE2020 <- EEE20[c(87:102), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2020) %>% mutate(Source = "Household")

NHEEE2020 <- EEE20[c(114:129), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2020) %>% mutate(Source = "Non_Household")

# 2019
EEE19 <-
  read_ods("WEEE_collected.ods", sheet = 2) %>% as.data.frame()

HEEE2019 <- EEE19[c(87:102), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2019) %>% mutate(Source = "Household")

NHEEE2019 <- EEE19[c(114:129), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2019) %>% mutate(Source = "Non_Household")

# 2018
EEE18 <-
  read_ods("WEEE_collected.ods", sheet = 3) %>% as.data.frame()

HEEE2018 <- EEE18[c(87:102), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2018) %>% mutate(Source = "Household")

NHEEE2018 <- EEE18[c(114:129), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2018) %>% mutate(Source = "Non_Household")

# 2017
EEE17 <-
  read_ods("WEEE_collected.ods", sheet = 4) %>% as.data.frame()

HEEE2017 <- EEE17[c(87:102), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2017) %>% mutate(Source = "Household")

NHEEE2017 <- EEE17[c(114:129), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2017) %>% mutate(Source = "Non_Household")

# 2016
EEE16 <-
  read_ods("WEEE_collected.ods", sheet = 5) %>% as.data.frame()

HEEE2016 <- EEE16[c(87:102), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2016) %>% mutate(Source = "Household")

NHEEE2016 <- EEE16[c(114:129), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2016) %>% mutate(Source = "Non_Household")

# 2015
EEE15 <-
  read_ods("WEEE_collected.ods", sheet = 6) %>% as.data.frame()

HEEE2015 <- EEE15[c(88:103), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2015) %>% mutate(Source = "Household")

NHEEE2015 <- EEE15[c(115:130), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2015) %>% mutate(Source = "Non_Household")

# 2014
EEE14 <-
  read_ods("WEEE_collected.ods", sheet = 7) %>% as.data.frame()

HEEE2014 <- EEE14[c(88:103), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2014) %>% mutate(Source = "Household")

NHEEE2014 <- EEE14[c(115:130), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2014) %>% mutate(Source = "Non_Household")

# 2013
EEE13 <-
  read_ods("WEEE_collected.ods", sheet = 8) %>% as.data.frame()

HEEE2013 <- EEE13[c(84:98), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2013) %>% mutate(Source = "Household")

NHEEE2013 <- EEE13[c(110:124), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2013) %>% mutate(Source = "Non_Household")

# 2012
EEE12 <-
  read_ods("WEEE_collected.ods", sheet = 9) %>% as.data.frame()

HEEE2012 <- EEE12[c(83:97), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2012) %>% mutate(Source = "Household")

NHEEE2012 <- EEE12[c(109:123), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2012) %>% mutate(Source = "Non_Household")

# 2011
EEE11 <-
  read_ods("WEEE_collected.ods", sheet = 10) %>% as.data.frame()

HEEE2011 <- EEE11[c(84:98), c(2,6)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2011) %>% mutate(Source = "Household")

NHEEE2011 <- EEE11[c(110:124), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2011) %>% mutate(Source = "Non_Household")

# 2010
EEE10 <-
  read_ods("WEEE_collected.ods", sheet = 11) %>% as.data.frame()

HEEE2010 <- EEE10[c(84:98), c(2,5)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2010) %>% mutate(Source = "Household")

NHEEE2010 <- EEE10[c(108:122), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2010) %>% mutate(Source = "Non_Household")

# 2009
EEE09 <-
  read_ods("WEEE_collected.ods", sheet = 12) %>% as.data.frame()

HEEE2009 <- EEE09[c(87:101), c(2,5)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2009) %>% mutate(Source = "Household")

NHEEE2009 <- EEE09[c(111:125), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2009) %>% mutate(Source = "Non_Household")

# 2008
EEE08 <-
  read_ods("WEEE_collected.ods", sheet = 13) %>% as.data.frame()

HEEE2008 <- EEE08[c(83:97), c(2,5)] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2008) %>% mutate(Source = "Household")

NHEEE2008 <- EEE08[c(107:121), c(2,7)] %>% 
  row_to_names(row_number = 1) %>% clean_names() %>% mutate(Year = 2008) %>% mutate(Source = "Non_Household")

# Bind
EEEcollecttotal <-
  rbindlist(
    list(
      HEEE2020,
      HEEE2019,
      HEEE2018,
      HEEE2017,
      HEEE2016,
      HEEE2015,
      HEEE2014,
      HEEE2013,
      HEEE2012,
      HEEE2011,
      HEEE2010,
      HEEE2009,
      HEEE2008,
      NHEEE2020,
      NHEEE2019,
      NHEEE2018,
      NHEEE2017,
      NHEEE2016,
      NHEEE2015,
      NHEEE2014,
      NHEEE2013,
      NHEEE2012,
      NHEEE2011,
      NHEEE2010,
      NHEEE2009,
      NHEEE2008
    ),
    use.names = FALSE
  )

colnames(EEEcollecttotal)[1]  <- "Category"
colnames(EEEcollecttotal)[2]  <- "Value"
colnames(EEEcollecttotal)[4]  <- "Stream"

EEEcollectwide <- pivot_wider(EEEcollecttotal, names_from = Stream, values_from = Value) 

EEEcollectwide$Household <-
  as.numeric(EEEcollectwide$Household)

EEEcollectwide$Non_Household <-
  as.numeric(EEEcollectwide$Non_Household)

EEEcollecttot <-
  EEEcollectwide %>% mutate(Total = Household + Non_Household)

EEEEcollecttotlong <- EEEcollecttot %>%
  pivot_longer(-c(Category, Year),
               names_to = "Stream",
               values_to = "Value")

EEEEcollecttotlong$Category <- gsub("Total", "Totals", EEEEcollecttotlong$Category)

write_xlsx(EEEEcollecttotlong, "EEE_collection_all.xlsx")  
