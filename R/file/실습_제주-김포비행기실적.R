# 실습_제주-김포비행기실적
install.packages("readxl")
library(readxl)
#데이터 로딩
#C열에 항공명, L열에 화물 실적 데이터 존재
data <- read_excel("airport.xlsx", col_names = FALSE, range="R80C3:R85C12") # 80행 C열부터 85행 L열까지의 데이터 로딩
head(data)

par(mfrow = c(1,1))
#데이터에서 ＇항공사별 화물 실적＇데이터를 추출
airportName <- data$...1 # 항공명
freight <- as.numeric(data$...10) # 화물 실적

# 추출한 데이터를 파이차트로 그림.
#항공사명, 비율 라벨 값 생성
freight_percent<- freight / sum(freight) * 100 # 항공사별 실적 비율 계산
freight_percent <- round(freight_percent, 1) #round: 반올림 함수, 소숫점 1째자리에서 반올림
label_data <- paste(airportName, "(", freight_percent,"%", ")")
print(label_data)
#파이차트 출력
pie(freight, label=label_data)
