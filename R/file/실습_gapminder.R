install.packages("gapminder")
library(gapminder)
library(dplyr) # dplyr 패키지도 로딩

#데이터 확인
str(gapminder)
?gapminder
table(gapminder$continent)
table(gapminder$country)

#대륙별 평균 GDP 계산
mean(pull(gapminder[gapminder$continent == "Africa", "gdpPercap"]))
mean(pull(gapminder[gapminder$continent == "Americas", "gdpPercap"]))
mean(pull(gapminder[gapminder$continent == "Asia", "gdpPercap"]))
mean(pull(gapminder[gapminder$continent == "Europe", "gdpPercap"]))
mean(pull(gapminder[gapminder$continent == "Oceania", "gdpPercap"]))
#한국 평균 GDP 확인
mean(pull(gapminder[gapminder$country == "Korea, Rep.", "gdpPercap"]))


# pull(): tibble 자료형을 벡터 또는 데이터 프레임 자료형으로 형 변환하는 함수
#대륙별 평균 GDP 계산
gapminder %>% filter(continent == "Africa") %>% select(gdpPercap) %>% pull() %>% mean()
gapminder %>% filter(continent == "Americas") %>% select(gdpPercap) %>% pull() %>% mean()
gapminder %>% filter(continent == "Asia") %>% select(gdpPercap) %>% pull() %>% mean()
gapminder %>% filter(continent == "Europe") %>% select(gdpPercap) %>% pull() %>% mean()
gapminder %>% filter(continent == "Oceania") %>% select(gdpPercap) %>% pull() %>% mean()
#한국 평균 GDP 확인
gapminder %>% filter(country == "Korea, Rep.") %>% select(gdpPercap) %>% pull() %>% mean()

gdp_bycontinents <- gapminder %>% group_by(continent) %>%
  summarize(mean_gdpPercap=mean(gdpPercap))

America <- gapminder %>% filter(continent == "Americas")
America %>% nrow() #300

America %>% filter(pop >= 30000000) %>% count(country, sort=T)


#min, max 값 계산
min <- gapminder %>% filter(country == "Brazil" | country == "Mexico" | country == "United States") %>%
  select(pop) %>% min()
max <- gapminder %>% filter(country == "Brazil" | country == "Mexico" | country == "United States") %>%
  select(pop) %>% max()
#그래프 그리기
gapminder %>% filter(country == "Brazil") %>% select(year, pop) %>% plot(type='o', col="red", ylim=c(min,max))
gapminder %>% filter(country == "Mexico") %>% select(year, pop) %>% lines(type='o', col="blue")
gapminder %>% filter(country == "United States") %>% select(year, pop) %>% lines(type='o', col="green")
#범례 그리기
legend("topleft",legend=c("Brazil", "Mexico", "United States"), fill=c("red", "blue","green"))

