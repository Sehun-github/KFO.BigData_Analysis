myload_data <- function(path){ # 로딩 과정 함수화
  data <- read.table(path, header=T, sep=";")
  for (col in names(data)){ # 모든 값들이 문자열로 덮여 있으므로 숫자화
    data[,col] <- as.numeric(data[, col])
  } 
  return(data)
}
red_wine <- myload_data("winequality-red.csv")
white_wine <- myload_data("winequality-white.csv")

library(corrplot)
mydraw_correlation <- function(data, cor_method="pearson"){
  M <- cor(data, method=cor_method)
  names(M) <- names(data) #데이터 상관관계값 추출하면 컬럼 이름명 사라짐. 재할당
  col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
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
}
mydraw_correlation(white_wine) #피어슨 상관관계 비교
mydraw_correlation(red_wine)
mydraw_correlation(white_wine, "spearman") #피어스만 비교
mydraw_correlation(red_wine, "spearman")

#잘 안보인다.
pairs(red_wine)
pairs(white_wine)

library(ggplot2)
#alcohol값과 quality의 값이 양의 관계에 있다는 것이 직관적으로 보인다.
ggplot(red_wine, aes(y=alcohol)) +
  geom_boxplot(aes(col=factor(quality)))
ggplot(white_wine, aes(y=alcohol)) +
  geom_boxplot(aes(col=factor(quality)))


shapiro.test(red_wine$alcohol) # p-value: 2.2/10^16. 귀무가설 기각. 정규분포를 따르지 않는다.
shapiro.test(white_wine$alcohol) # p-value: 2.2/10^16. 귀무가설 기각. 정규분포를 따르지 않는다.

ggplot(red_wine) +
  geom_histogram(aes(x=alcohol, fill=factor(quality)))


library(dplyr)
high_quality_white <- white_wine %>% filter(quality > 6)
shapiro.test(high_quality_white$alcohol) #p-value: 5.908/10^14. 귀무가설 기각
high_quality_red <- red_wine %>% filter(quality > 6)
shapiro.test(high_quality_red$alcohol) #p-value:0.2322. 유의확률 0.05에 대하여 귀무가설 채택

red_wine %>% filter(quality > 6) %>% ggplot() +
  geom_density(aes(x=alcohol), col='red') + #전체 레드와인 알코올 분포
  geom_density(data=red_wine, aes(x=alcohol)) #고품질 레드와인 알코올 분포


# 모집단의 표준편차값을 알 수 없기에 t검정 사용
t.test(x=high_quality_red$alcohol, alternative = "two.sided", mu=11.5, conf.level = 0.95)



