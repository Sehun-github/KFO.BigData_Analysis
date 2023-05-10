#### 데이터 확인하기 ####

#datasets 패키지 내장 데이터셋 사용
library(datasets)
data <- Orange # ‘Orange’ 데이터셋 사용
print(data)
dim(data)
length(data) # 3
length(data$Tree) # 35

str(data)
names(data)
View(data)

data[c(1,2), ] #data의 (1,2행, 모든 열) 출력
data[ , c(1,2) ] #data의 (모든 행, 1,2열) 출력
data[ c(1,2) ]
data[ c(1,2), c(1,2) ] #data의 (1,2행, 1,2열)만 출력

data_deleteRows <- data[c(-1,-2), ]
data_deleteCols <- data[ , c(-1,-2) ]
data_deleteRowCol <- data[ c(-1,-2), c(-1,-2) ]


names(data) # c(“Tree”, “age”, “circumference”)
ageVec <- data$age # data 데이터 프레임에서 age 컬럼의 벡터만 추출
circVec <- data$circumference # data 데이터 프레임에서 circumference 컬럼의 벡터만 추출
mean(ageVec) # 922.1429
mean(circVec) # 115.8571
var(ageVec) # 241930.7
var(circVec) # 3304.891
sd(ageVec) # 491.8645
sd(circVec) # 57.48818


names(data) # c(“Tree”, “age”, “circumference”)
treeVec <- data$Tree
table(treeVec)

# 사분위수
quantile(data$age)
quantile(data$circumference)
