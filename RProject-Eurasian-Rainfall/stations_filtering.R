require(dplyr, quietly = TRUE)
require(utils, quietly = TRUE)
require(LaF, quietly = TRUE)
require(tidyr, quietly = TRUE)
require(ggplot2, quietly = TRUE)
require(ggfortify, quietly = TRUE)

stations_width<-c(12, 9, 10, 7, 3, 31)
stations_colname<-c("id", "latitude", "longitude", "elevation", "state", "name")

laf <- laf_open_fwf("Raw_Data/ghcnd-stations.txt", column_widths = stations_width, 
                    column_types=rep("character",6),
                    column_names = stations_colname)

stations<-laf[,]

View(stations)

kz_stations<-filter(stations, grepl("KZ00", substr(stations$id,1,4)))
kz_stations$url<-paste0("ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/all/", trimws(kz_stations), ".dly")

write.csv(kz_stations, "Data/kz_stations.csv", row.names = FALSE)

rsm_stations<-filter(stations, grepl("RSM0", substr(stations$id,1,4)))
rsm_stations$url<-paste0("ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/all/", trimws(rsm_stations), ".dly")

write.csv(rsm_stations, "Data/rsm_stations.csv", row.names = FALSE)

upm_stations<-filter(stations, grepl("UPM0", substr(stations$id,1,4)))
upm_stations$url<-paste0("ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/all/", trimws(upm_stations), ".dly")

write.csv(upm_stations, "Data/upm_stations.csv", row.names = FALSE)

#################

#Pulls in the kazakhstani stations
kazakhstan_filtered <- read.csv("C:\\Users\\benbo\\Documents\\GitHub\\eurasian-rainfall\\rainfall-stations\\kazakhstan-filtered.csv", header = TRUE)

#This transforms the "id" column into a character vector before using paste.
kazakhstan_station_string <- paste(unlist(kazakhstan_filtered$id), collapse =",")

#Pulls in the Russian stations
russia_filtered <- read.csv("C:\\Users\\benbo\\Documents\\GitHub\\eurasian-rainfall\\rainfall-stations\\russia-filtered.csv", header = TRUE)

#This transforms the "id" column into a character vector before using paste.
russia_station_string <- paste(unlist(russia_filtered$id), collapse =",")


#Pulls in the Ukraine stations
ukraine_filtered <- read.csv("C:\\Users\\benbo\\Documents\\GitHub\\eurasian-rainfall\\rainfall-stations\\ukraine-filtered.csv", header = TRUE)

#This transforms the "id" column into a character vector before using paste.
ukraine_station_string <- paste(unlist(ukraine_filtered$id), collapse =",")

weatherstation_ids <- paste(ukraine_station_string, russia_station_string, kazakhstan_station_string)
weatherstation_ids_df <- as.data.frame(weatherstation_ids)
weatherstation_ids_df <- weatherstation_ids_df %>% 
  mutate(weatherstation_ids=strsplit(weatherstation_ids, ",")) %>% 
  unnest(weatherstation_ids)
