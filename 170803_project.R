############################################
### 1. ������Ʈ                          ###
############################################
install.packages("rworldmap")
install.packages("ggplot2")
install.packages("ggmap")
install.packages("dplyr")
library(rworldmap)
library(ggmap)

setwd("d:/")

house_location = readxl::read_excel(path      = "R/Project/kc_house_data_kth.xlsx",
                                    sheet     = "data",
                                    col_names = TRUE)
house_location

##getmap <- get_googlemap("seoul")

p <- get_googlemap("seoul") %>% ggmap

locationInfo <- data.frame( Name = c("���ʿ�", "������"),
                            lon = c(127.007675, 127.027544),
                            lat = c(37.491843, 37.497648))

c = getmap + geom_point(data=locationInfo, aes(x = lon, y = lat))

