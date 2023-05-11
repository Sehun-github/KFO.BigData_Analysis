install.packages("dplyr") # 패키지 설치
library(dplyr)

a <- c(10,22,33)
a %>% mean # 21.66667. mean(a)와 동일

a <- c(10,22,33)
div <- function(x,y){ return(x/y) } #파이프연산자에서 나눗셈, 곱셈 연산자(/, *) 사용불가
a %>% sqrt() %>% + 0.2 %>% round(1) %>% -1 %>% div(5) %>% paste("%", sep="") %>% print()

id <- as.character(c(2021001:2021010))
math <- c(100, 54, 36, 76, 54, 94, 15, 6, 34,64)
english <- c(95, 23, 11, 89, 50, 53, 70, 13, 60,90)
science <- c(99, 56, 43, 90, 34, 77, 43, 3, 85,72)
exam <- data.frame(id, math, english, science)
print(exam)


select(exam, science, math) # science, math 컬럼만 추출


filter(exam, math > 60) # 수학 점수가 60점 이상인 학생만 추출
filter(exam, english > 20 & science > 50) # AND(&) 연산자 이용한 추출
filter(exam, english > 20 | science > 50) # OR(|) 연산자 이용한 추출

exam %>% filter(science > 70 & math < 50) %>% select(id) %>% as.character() %>% print()


mutate(exam, average= (math+science+english)/3)
mutate(exam, pass= ifelse((math+science+english)/3 >= 70, "합격","불합격"))


### 예제 2 ###
id <- as.character( rep(c(2021001:2021010), tims=2) )
mid_math <- c(100, 54, 36, 76, 54, 94, 15, 6, 34,64)
final_math <- c(90, 80, 23, 67, 44, 72, 10, 45, 87,55)
math <- c(mid_math, final_math)
mid_english <- c(95, 23, 11, 89, 50, 53, 70, 13, 60,90)
final_english <- c(90, 32, 4, 74, 90, 23, 83, 52, 43,70)
english <- c(mid_english, final_english)
mid_science <- c(99, 56, 43, 90, 34, 77, 43, 3, 85,72)
final_science <- c(100, 79, 25, 65, 63, 75, 73, 66, 50, 83)
science <- c(mid_science, final_science)
examTerm <- rep(c("중간", "기말"), times=c(10,10))
exam2 <- data.frame(id, math, english, science, examTerm)
print(exam2)

group_by(exam2, id)

group_exam <- group_by(exam2, id)
#학생 별, 평균 수학, 영어
summarize(group_exam, mathAvg=mean(math), englishAvg=mean(english))

