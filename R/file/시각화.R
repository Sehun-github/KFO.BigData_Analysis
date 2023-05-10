#### plot #### 
x = 1
y = 2
plot(x,y)

x = 1
y = 2
plot(x,y, ylim=c(0.6,1.4))

x = c(1,2,3,4,5,6)
y = c(2,4,5.8,7,7.5,8)
plot(x,y, pch=19)

# 그래프 선 넣기
x = c(1,2,3,4,5,6)
y = c(2,4,5.8,7,7.5,8)
plot(x,y, type="l", pch=19)
plot(x,y, type="b", pch=19)

library(datasets)
data <- EuStockMarkets #1991-1998년간 유럽주식지수 종가 데이터셋
plot(1:length(data),data, type="l", main="1991-1998 Europe Stock Daily
Closing Price", xlab='day', ylab='price') #제목, 축이름 추가


#### 다중 그래프 그리기 #### 
x = c(1,2,3,4,5,6)
y = c(2,4,5.8,7,7.5,8)
plot(x, type="o", pch=19, col="red", xlim=c(1,6), ylim=c(1,8))
lines(y, type="o", pch=19, col="green")


library(datasets)
data <- as.numeric(AirPassengers) #1949년도 1월 - 1960년도 12월까지 월간 향공기 탑승 승객 수
#데이터셋. 12x12= 144개 데이터
length(data) #144
y1949 = data[1:12]
y1950 = data[13:24]
plot(y1949, type="o", pch=19, col="red", ylim=c(90,180), xlab="Month", ylab="passengers")
lines(y1950, type="o", pch=19, col="blue")


data <- as.numeric(AirPassengers) #1949년도 1월 - 1960년도 12월까지 월간 향공기 탑승 승객 수
y1949 = data[1:12]
y1950 = data[13:24]
plot(y1949, type="o", pch=19, col="red", ylim=c(90,180), xlab="Month", ylab="passengers")
lines(y1950, type="o", pch=19, col="blue")
legend("topright", legend=c("1949y", "1950y"), fill=c("red", "blue"))


#### 파이 차트 ####
data <- c(40, 23, 34)
pie(data)

data <- c(40, 23, 34)
label <- c("A", "B", "C")
pie(data, label=label)


#### 히스토그램 ####
data = c(2,1,4,5.8,6,7,12,13,14,4,5,6,7,6,5,4,7,7.5,8,6,4,7,6,5,9,1,3,2,15,20,17)
hist(data)
hist(data, breaks=10)

data <- airquality #내장 데이터셋 airquality 사용
head(data)
temp <- data$Temp
range(temp) # 56 97
hist(data$Temp)
hist(data$Temp, breaks=20)
hist(data$Temp, breaks=20, freq=F)

#### 박스플롯  ####
data = c(2,1,4,5.8,6,7,12,13,14,4,5,6,7,6,5,4,7,7.5,8,6,4,7,6,5,9,1,3,2,15,20,17)
boxplot(data)

data <- airquality #내장 데이터셋 airquality 사용
head(data)
boxplot(data)

#### 화면 분할 ####
par(mfrow = c(1,2))
data <- sample(110:150, 30) # 110~150 사이 30개 정수 무작위 샘플링
hist(data)
hist(data, breaks=20)

