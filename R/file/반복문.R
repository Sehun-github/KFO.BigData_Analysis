data <- c(32, 45, 21, 10, 43)
result <- 0
for( i in data){
  result <- result + i
}
print(result)


# 벡터 다루기
data <- c(32, 45, 21, 10, 43)
data[1] #32
data[3] #21
data[1] <- 50 # data 벡터 1번 위치에 50 할당
data[1] #50

data <- c(32, 45, 21, 10, 43)
logic <- c(T, T, F, F, T)
num <- c(1,4,5)
data[logic] # c(32, 45, 43) , logic 벡터 값이 TRUE 인 index 값만 리턴
data[num] # c(32, 10, 43) , num 벡터 값에 해당하는 index 값만 리턴

data <- c(32, 45, 21, 10, 43)
data[ -3 ] # c(32, 45, 10, 43) , 해당 자릿수 값만 빼고 리턴
data[ c(-1,-4) ] # c(45, 21, 43)


i <- 1
vec <- c() #빈 벡터 생성
while(i < 10){
  vec <- c(vec, i)
  i <- i + 1
}
print(vec) # c(1, 2, 3, 4, 5, 6, 7, 8, 9)


