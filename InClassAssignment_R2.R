install.packages("maps")
library(ggplot2)
library(maps)
states<-map_data("state")
ggplot(data = states) +
  geom_polygon(aes(x=long,y=lat,group=group),color="white")

states<-map_data("state")
ggplot(data = states) +
  geom_polygon(aes(x=long,y=lat,group=group,fill=region),color="white")
 
SouthData <- map_data('state') %>% filter(is.na(subregion)| subregion == 'Alabama') 

ggplot() +
  geom_map(data = SouthData, map = SouthData,
           aes(x = long, y = lat, map_id = region))