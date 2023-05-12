### 피어슨 상관계수 ###
data <- iris # iris 데이터셋 사용. 내장 데이터셋
cor(data$Sepal.Length, data$Petal.Width) #꽃받침 길이와 꽃잎 넓이 변수간의 피어슨 상관계수 측정
# 귀무 가설: ‘두 변수는 서로 상관 관계가 없다’인 가설 검정 결과도 출력 (상관계수도 출력)
# p-value가 0.05보다 작다면 귀무 가설을 기각. 즉, 5% 유의수준아래 두 변수는 상관 있다
cor.test(data$Sepal.Length, data$Petal.Width)

cor(data[,1:4]) # 여러 개 변수 상관분석
pairs(data[,1:4]) # 변수별 산점도 그래프 출력 (시각화)

### 켄달 상관계수 ###
cor(data[,1:4], method="kendall")
#psych 패키지 사용 – 통계 관련 유용한 함수 다수 제공
install.packages("psych")
library(psych)
#컬럼 별 상관계수 및 컬럼 별 상관관계 가설검정 수치 함께 출력. cor 함수와 cor.test 함수와 동일
corr.test(data[,1:4],
          use = 'complete',
          method = 'kendall',
          adjust ='none')



### 스피어만 상관계수 ###
cor(data[,1:4], method="spearman")
#psych 패키지 사용 – 통계 관련 유용한 함수 다수 제공
install.packages("psych")
library(psych)
#컬럼 별 상관계수 및 컬럼 별 상관관계 가설검정 수치 함께 출력. cor 함수와 cor.test 함수와 동일
corr.test(data[,1:4],
          use = 'complete',
          method = 'spearman',
          adjust ='none')




### 상관계수 시각화 ###
install.packages("corrplot")
library(corrplot)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
M = cor(iris[,1:4])
corrplot(M,
         method = "color",
         col = col(150),
         type = "upper",
         order = "hclust",
         number.cex = .7,
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 90,
         sig.level = 0.01,
         insig = "blank",
         diag = FALSE)

