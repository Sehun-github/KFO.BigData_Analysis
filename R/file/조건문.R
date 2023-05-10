# if~else
t <- scan()
if( t >= 30){
  print("더움")
} else if ( t >= 20 ){
  print("보통")
} else if (t >= 10 ){
  print("선선")
} else if (t >= 0 ){
  print("추움")
} else {
  print("매우 추움")
}

data <- "매우 많이"
if(data == "매우 많이"){
  result <- 100
} else if (data == "많이"){
  result <- 70
} else if (data == "보통"){
  result <- 50
} else if (data == "조금"){
  result <- 30
} else {
  result <- 0
}
print(data)


# switch
data <- "매우 많이" # 가정
result <- switch(data, "매우 많이"=100, "많이"=70, "보통"=50, "조금"=30, 0)
print(result)


# ifelse
flight <- c(1575, 481, 124, 354, 1197, 793, 1670, 859) # 데이터 입력
result <- ifelse(flight > 1000, "우수", "보통")
print(result)
