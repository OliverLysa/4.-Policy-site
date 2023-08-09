setwd("/Users/oliverlysaght/Desktop/R/WPP/WEEE/EA")

library(tidyverse)
library(readxl)
library(readODS)
library(janitor)
library(data.table)

source("./cleaning_functions.R", local = knitr::knit_global())

# EEE on the Market Data Download

# Specify URL where file is stored
url <-
  "http://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/913181/Electrical_and_electronic_equipment_placed_on_market.ods"

# Specify destination where file should be saved
destfile <-
  "/Users/oliverlysaght/Desktop/R/WPP/WEEE/EA/EEE_on_the_market.ods"

# Apply download.file function in R
download.file(url, destfile)

# 2020
EEE20 <-
  read_ods("EEE_on_the_market.ods", sheet = 1) %>% as.data.frame()

EEE2020 <- EEE20[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2020)

# 2019
EEE19 <-
  read_ods("EEE_on_the_market.ods", sheet = 2) %>% as.data.frame()

EEE2019 <- EEE19[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2019)

# 2018
EEE18 <-
  read_ods("EEE_on_the_market.ods", sheet = 3) %>% as.data.frame()

EEE2018 <- EEE18[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2018)

# 2017
EEE17 <-
  read_ods("EEE_on_the_market.ods", sheet = 4) %>% as.data.frame()

EEE2017 <- EEE17[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2017)

# 2016
EEE16 <-
  read_ods("EEE_on_the_market.ods", sheet = 5) %>% as.data.frame()

EEE2016 <- EEE16[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2016)

# 2015
EEE15 <-
  read_ods("EEE_on_the_market.ods", sheet = 6) %>% as.data.frame()

EEE2015 <- EEE15[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2015)

# 2014
EEE14 <-
  read_ods("EEE_on_the_market.ods", sheet = 7) %>% as.data.frame()

EEE2014 <- EEE14[92:107, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2014)

# 2013
EEE13 <-
  read_ods("EEE_on_the_market.ods", sheet = 8) %>% as.data.frame()

EEE2013 <- EEE13[88:102, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2013)

# 2012
EEE12 <-
  read_ods("EEE_on_the_market.ods", sheet = 9) %>% as.data.frame()

EEE2012 <- EEE12[88:102, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2012)

# 2011
EEE11 <-
  read_ods("EEE_on_the_market.ods", sheet = 10) %>% as.data.frame()

EEE2011 <- EEE11[88:102, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2011)

# 2010
EEE10 <-
  read_ods("EEE_on_the_market.ods", sheet = 11) %>% as.data.frame()

EEE2010 <- EEE10[89:103, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2010)

# 2009
EEE09 <-
  read_ods("EEE_on_the_market.ods", sheet = 12) %>% as.data.frame()

EEE2009 <- EEE09[89:103, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2009)

# 2008
EEE08 <-
  read_ods("EEE_on_the_market.ods", sheet = 13) %>% as.data.frame()

EEE2008 <- EEE08[84:98, 2:4] %>%
  row_to_names(row_number = 1) %>% mutate(Year = 2008)

EEEmarkettotal <-
  rbindlist(
    list(
      EEE2020,
      EEE2019,
      EEE2018,
      EEE2017,
      EEE2016,
      EEE2015,
      EEE2014,
      EEE2013,
      EEE2012,
      EEE2011,
      EEE2010,
      EEE2009,
      EEE2008
    ),
    use.names = FALSE
  )

EEEmarkettotal <-
  EEEmarkettotal %>% dplyr::rename_all(funs(make.names(.)))

colnames(EEEmarkettotal)[2]  <- "Household"
colnames(EEEmarkettotal)[3]  <- "Non_Household"

EEEmarkettotal$Household <-
  as.numeric(EEEmarkettotal$Household)

EEEmarkettotal$Non_Household <-
  as.numeric(EEEmarkettotal$Non_Household)

EEEmarkettotal <-
  EEEmarkettotal %>% mutate(Total = Household + Non_Household)

EAWEEElong <- EEEmarkettotal %>%
  pivot_longer(-c(Category, Year),
               names_to = "Stream",
               values_to = "Value")

write_xlsx(EAWEEElong, "EEE_market_all.xlsx")  
