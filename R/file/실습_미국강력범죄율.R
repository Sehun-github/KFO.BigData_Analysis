#패키지 설치
install.packages("ggiraphExtra")
install.packages('maps')
install.packages("gridExtra")
install.packages("dplyr")


#패키지 로딩
library(ggiraphExtra)
library(tibble)
library(ggplot2)
library(gridExtra)
library(dplyr)

#데이터셋 로딩
crime <- rownames_to_column(USArrests, var = 'state')
crime$state <- tolower(crime$state)
print(crime$state)

states_map <- map_data("state")
str(states_map)
View(states_map %>% filter(region == "alabama"))


ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)

#나타내고 싶은 plot을 각각의 변수에 저장
p1 <- ggplot(data= crime, aes(x=UrbanPop, y=Murder))+
  geom_point() +
  stat_smooth(level = 0.9)

p2 <- ggplot(data= crime, aes(x=UrbanPop, y=Assault))+
  geom_point() +
  stat_smooth(level = 0.9)

p3 <- ggplot(data= crime, aes(x=UrbanPop, y=Rape))+
  geom_point() +
  stat_smooth(level = 0.9)

grid.arrange(p1, p2, p3)


