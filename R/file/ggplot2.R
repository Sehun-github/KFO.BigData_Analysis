install.packages("ggplot2") # 패키지 설치
library(ggplot2) # 패키지 로딩

diamond = diamonds #다이아몬드의 품질 값들 및 가격 저장한 데이터셋
str(diamond) # dplyr 패키지 import 필요
?diamonds # 다이아몬드 데이터셋 help 페이지 출력

qplot(data=diamonds, x=carat, y=price)
qplot(data=diamonds, x=carat, y=price, aes(col=cut))
qplot(data=diamonds, x=cut, y=price, geom='boxplot')
qplot(data=diamonds, x=cut, y=price, aes(col=cut), geom='boxplot')
qplot(data=diamonds, x=cut, y=price, aes(col=clarity), geom='boxplot')

ggplot(diamonds) # 데이터셋으로 diamonds가 지정됨
ggplot(diamonds, aes(x = carat, y = price)) # x축으로 carat, y축으로 price가 지정됨
ggplot(diamonds, aes(x = carat, y = price, color = cut)) # cut에 따라 색이 서로 다르게 지정됨

ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()


ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(shape=21, color='blue', fill='black')

ggplot(diamonds[1:100,], aes(x = carat, y = price)) + #100행만 추출
  geom_line(arrow= arrow())

# 선 그래프
ggplot(diamonds[1:100,], aes(x = carat, y = price)) + #100행만 추출
  geom_line(color='blue', size=2)

# 막대 그래프
ggplot(diamonds, aes(x=cut, fill=clarity)) +
  geom_bar()

# 히스토그램
ggplot(diamonds, aes(x=carat, fill=cut)) +
  geom_histogram()

# 상자그림
ggplot(diamonds, aes(x=cut, y=carat )) +
  geom_boxplot()
