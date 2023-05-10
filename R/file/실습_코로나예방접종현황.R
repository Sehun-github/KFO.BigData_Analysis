data <- read.csv("covid19.csv", header=F, fileEncoding = "euc-kr") 
dim(data)
data[31:2,] # 데이터 뒤집기


#9월 한달간 ＇당일 1차 접종자＇, '당일 2차 접종자‘ 데이터를 추출
#9월 한달간 ＇1차 접종률＇, ＇2차 접종률＇ 데이터를 추출
first_vaccine <- data$V3 #일일 1차 접종자 데이터 추출
second_vaccine <- data$V6 #일일 1차 접종자 데이터 추출
first_rate <- data$V5 # 1차 접종률 데이터 추출
second_rate <- data$V8 # 1차 접종률 데이터 추출

#화면분할 출력
par(mfrow = c(1,1))
plot(first_vaccine, type='o', col='red', pch=19, xlab="day", ylab="count", main="코로나 일일 백신 접종 수")
lines(second_vaccine, type='o', col='blue', pch=19)
legend("bottomright", legend=c('first', 'second'), fill=c("red", "blue"))




