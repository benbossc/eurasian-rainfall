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
               
test <- kaz_ua_rus_FullPrcp %>%
  group_by(COUNTRY, DATE) %>%
  count(DATE)

View(test)

kaz_ua_rus_KZ000028676 <- filter(kaz_ua_rus, STATION == "KZ000028676")

View(kaz_ua_rus_KZ000028676)
ggplot(kaz_ua_rus_KZ000028676, aes(x=DATE, y=PRCP)) +
  geom_line()

View(kaz_ua_rus_FullPrcp %>%
  count(PRCP > 0, DATE, COUNTRY))

View(kaz_ua_rus_FullPrcp %>%
       count(PRCP > 0, DATE, COUNTRY, OBLAST))

#This creates rows that have missing values (i.e., if 1977 does not exist for a station but 1976 and 1978 exist)
View(kaz_ua_rus_FullPrcp %>% complete(nesting(STATION), DATE = seq(min(DATE), max(DATE), 1L)))
