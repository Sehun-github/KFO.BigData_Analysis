###### 데이터 가져오기 ######
# .txt 불러오기
getwd() #student.txt 파일 다음 경로에 넣기
dir() #student.txt 파일 잘 들어가있는지 확인
data <- read.table(“student.txt”, header=TRUE, sep=“;”)
class(data) # data.frame
dim(data) # c(4 4) , 데이터 크기 확인
print(data)

# .csv 불러오기
getwd() #student3.csv 파일 다음 경로에 넣기
dir() #student3.csv 파일 잘 들어가있는지 확인
data <- read.csv("student3.csv", header=FALSE)
data2 <- read.csv("student3.csv", header=FALSE, col.name=c("학번", "이름", "학년", "성적"))
dim(data) # c(5,4)
print(data)
print(data2)

# .excel 불러오기
#패키지 설치 및 로딩 (최초 1회만 실행하면 됨)
install.packages("readxl")
library(readxl)
#데이터 로딩
data <- read_excel("student4.xlsx")
class(data) # c(“tbl_df”, “tbl”, “data.frame”) , 패키지에서 제공하는 데이터형식 추가됨
print(data)



#### 데이터 내보내기 ######
# .txt
write.table(data, "save3.txt", row.names = FALSE, quote = FALSE, sep=“;”)

# .csv
write.csv(data, "save5.csv", row.names = FALSE, quote = FALSE)

# .xlsx
install.packages("writexl")
library(writexl)
write_xlsx(homework_data2, path ="save6.xlsx")
