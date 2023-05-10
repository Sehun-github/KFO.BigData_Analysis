# 산술 연산자
a <- 3+5 # ‘+’ 더하기 연산자
b <- 3-5 # ‘-’ 빼기 연산자
c <- 3*5 # ‘*’ 곱하기 연산자
d <- 3/5 # ‘/’ 나누기 연산자
e <- 3^5 # ‘^’ 제곱 연산자
f <- 3%%5 # ‘%%’ 나머지 연산자
g <- 3%/%5 # ‘%/%’ 몫 연산자 (나머지 버리는 나누기)

# 비교 연산자
a <- (3 >5) # ‘a > b’ a는 b보다 큰가?
b <- (3 >= 3) # ‘a >= b’ a는 b보다 크거나 같은가?
c <- (3 < 5) # ‘a < b’ , a는 b보다 작은가?
d <- (3 <= 5) # ‘a <= b’ a는 b보다 작거나 같은가?
e <- (3 == 4) # ‘a == b’ a는 b와 같은가?
f <- (3 != 4) # ‘a != b’ a는 b와 다른가?

# 논리 연산자
a <- c(T, T) & c(F, T) # ‘&’ 벡터화 된 논리곱(AND)
# b <- c(T, T) && c(F, T) # ‘&&’ 벡터화 되지 않은 논리곱 (첫번째 값만 비교)
c <- c(T, T) | c(F, T) # ‘|’ , 벡터화 된 논리합(OR) ( | : Shift + \)
d <- c(T, T) || c(F, T) # ‘||’ 벡터화 되지 않은 논리합 (첫번째 값만 비교)
e <- !TRUE # ‘!’ 논리 부정(NOT)

factorial(c(4,3))

index <- c(1,2,3)
len <- length(index) # index 벡터의 크기 리턴
paste(index, rep('번', len), sep="") # c(‘1 번‘, ‘2 번’, ‘3 번’)


## 실습
#데이터 입력
airline <- c('아시아나항공', '에어부산', '에어프레미아', '에어서울', '제주항공', '진에어', '대한항공', '티웨이항공')
flight <- c(1575, 481, 124, 354, 1197, 793, 1670, 859)
passenger <- c(249792, 90985, 29238, 71213, 203335, 133253, 250895, 146497)
freight <- c(3097.9, 516.7, 111.1, 273.1, 847.1, 763.2, 5406.1, 597.6)
#계산 및 출력
total <- c(sum(flight), sum(passenger), sum(freight))
average <- total / length(flight) # length(): 입력된 매개변수의 크기 리턴

print(total)
print(average)


#계산 및 출력
upperAvg_flight <- flight > mean(flight) #평균 운항 실적과 항공사별 운항실적 비교
print(upperAvg_flight) # c(TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE)
result <- airline[upperAvg_flight] # airline 벡터 중 TRUE에 해당하는 index 값만 남김
print(result)


