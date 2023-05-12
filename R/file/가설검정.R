data <- read_excel('man_height.xlsx') # 데이터 다운로드
z <- (mean(data$키)-175)/(6/sqrt(length(data$키))) # z값 계산
library(readxl)


library(ggplot2)
data <- read_excel('man_height.xlsx')
# 모집단 평균 175, 분산 6
# 유의 수준 0.05 ---> 1.96
alpha <- 1.96
data <- read_excel('man_height.xlsx')
#귀무 가설: 남자 키 평균은 175다
#대립 가설: 남자 키 평균은 175가 아니다
z <- (mean(data$키)-175)/(6/sqrt(length(data$키)))
if(abs(z) > 1.96) {
  print("귀무가설 기각. 남자 평균 키는 175가 아니다")
} else {
  print("귀무가설 기각. 남자 평균 키는 175다")
}


### z.test 사용 ###
install.packages("BSDA")
library("BSDA")
z.test(x=data, alternative = "two.sided", mu=175, sigma.x=6, conf.level = 0.95) # conf.level = 1 – 유의 수준


### t검정 ###
# 모집단 평균 175
data <- read_excel('man_height.xlsx')
length(data$키) #30. 즉, 자유도는 29
t <- (mean(data$키)-175)/(sd(data$키)/sqrt(length(data$키))) # t값 계산
print(t)

library(readxl)
library(ggplot2)
data <- read_excel('man_height.xlsx')
# 모집단 평균 175
# 유의 수준 0.05
# 양측 검정 : TRUE
data <- read_excel('man_height.xlsx')
#귀무 가설: 남자 키 평균은 175다
#대립 가설: 남자 키 평균은 175가 아니다
t <- (mean(data$키)-175)/(sd(data$키)/sqrt(length(data$키)))
tval <- qt(1- 0.05/2,29) # qt: t분포표 값 얻을 수 있는 함수
print(tval) # 2.04523
if(abs(t) > tval) {
  print("귀무가설 기각. 남자 평균 키는 175가 아니다")
} else {
  print("귀무가설 기각. 남자 평균 키는 175다")
}

install.packages("BSDA")
library("BSDA")
z.test(x=data, alternative = "two.sided", mu=175, sigma.x=6, conf.level = 0.95)


### 양측검정, 단측검정 ###
library("BSDA")
data <- read_excel('man_height.xlsx')
z.test(x=data, alternative = "greater", mu=175, sigma.x=6, conf.level = 0.95)
z.test(x=data, alternative = "less", mu=175, sigma.x=6, conf.level = 0.95)
t.test(x=data, alternative = "two.sided", mu=175, conf.level = 0.95)


