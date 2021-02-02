#This script is for the actual data analysis and exploration. The first
# step I want to do first to associate each station with an Oblast.

library(tidyverse)
kaz_ua_rus <- read_csv("Raw_Data\\1961-2020-kaz-ua-rus_raw.csv", 
                       na = "NULL")

View(kaz_ua_rus)

test <- kaz_ua_rus %>%
  group_by(COUNTRY, DATE) %>%
  count(DATE)

View(test)

#get rid of NA values in PRCP
kaz_ua_rus_FullPrcp <- filter(kaz_ua_rus, !is.na(PRCP))
               
coverage_year_country <- kaz_ua_rus_FullPrcp %>%
  group_by(COUNTRY, DATE) %>%
  count(DATE)

View(coverage_year_country)

kaz_ua_rus_KZ000028676 <- filter(kaz_ua_rus, STATION == "KZ000028676")

View(kaz_ua_rus_KZ000028676)
ggplot(kaz_ua_rus_KZ000028676, aes(x=DATE, y=PRCP)) +
  geom_line()

#Creating a df that showcases the number of stations represented in each year
kaz_ua_rus_countryFreq <- kaz_ua_rus_FullPrcp %>%
  count(PRCP > 0, DATE, COUNTRY)

#Shows # represented by oblast
kaz_ua_rus_oblastFreq <- kaz_ua_rus_FullPrcp %>%
       count(PRCP > 0, DATE, COUNTRY, OBLAST)

#This creates rows that have missing values (i.e., if 1977 does not exist for a station but 1976 and 1978 exist)
View(kaz_ua_rus_FullPrcp %>% complete(nesting(STATION), DATE = seq(min(DATE), max(DATE), 1L)))

View(kaz_ua_rus_FullPrcp)

#Shows mean per country per year
kaz_ua_rus_FullPrcp_yr <- kaz_ua_rus_FullPrcp %>%
  group_by(COUNTRY, DATE) %>%
  summarise(average = mean(PRCP))

View(kaz_ua_rus_FullPrcp_yr)

#Creates a time series plot from mean per country per year
ggplot(data = kaz_ua_rus_FullPrcp_yr, aes(x = DATE, y = average, color = COUNTRY)) +
  geom_line()

#Space to create CSV files
write.csv(kaz_ua_rus_FullPrcp, 'Data\\kaz_ua_rus.csv')
write.csv(kaz_ua_rus_countryFreq, 'Data\\kaz_ua_rus_country.csv')
write.csv(kaz_ua_rus_FullPrcp_yr, 'Data\\kaz_ua_rus_timeseries.csv')
