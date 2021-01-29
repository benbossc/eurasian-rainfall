#This script is for the actual data analysis and exploration. The first
# step I want to do first to associate each station with an Oblast.

library(tidyverse)
kaz_ua_rus <- read_csv("Raw_Data\\1961-2020-kaz-ua-rus_raw.csv", 
                       na = "NULL")

