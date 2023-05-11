#패키지 설치
install.packages("forecast")
install.packages("quantmod")
#패키지 로딩
library(forecast)
library(quantmod)

#sin 함수 파형 예측
x = seq(0, 5, 0.01)
y = ts(sin(2*pi*x) + x, frequency= 100) # ts: time-series 타입
plot(x,y, type='l')
plot(forecast(y, h=200)) #h: 예측할 데이터 개수

class(AirPassengers) # ts
plot(x= c(1:144), y=AirPassengers, type="l")
plot(forecast(AirPassengers), h=200)









