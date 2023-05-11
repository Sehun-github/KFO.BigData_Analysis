# R 언어

> #### RStudio 사용

## day1
* [R_FirstScript](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/FirstScript.R)
```
* R이란
 - 전산통계학을 위한 프로그래밍 언어
 - 데이터 통계처리 및 시각화에 특화

* R의 장점
 - 유저 커뮤니티 활성화
 - 상대적으로 학습난이도 낮음
 - 다양한 OS 지원
 
* 단점
 - 범용 프로그래밍 언어보다 처리 속도가 느림
 - 한정된 사용성
 - 보안기능 없음

* 데이터 처리 과정
 - 문제정의 -> 데이터 수집 -> 전처리 -> 분석 -> 결과정리

* R 설치
 - http://www.r-project.org/ -> 왼쪽 상단 CRAN -> Korea 가장 위 다운 -> OS 별 설치 -> install R for the first time
```

* [R_경로변경](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/경로변경.R)
```
* Working directory 설정 방법
 - getwd()
 - dir()

* Working directory 수정방법
 - setwd("디렉토리명") / RStuio를 껐다 키면 바뀜
 - Tool -> Global Options -> Default Working directory 설정

* 자동 줄바꿈
 - Tool -> Global Options -> Code -> Soft-wrap R source files 클릭

* 셀렉트 하이라이트
 - Tool -> Global Options -> Code -> Display 탭 -> Highlight selected line

* 폰트 및 배경 설정
 - Tool -> Global Options -> Appearance

* 인코딩 타입 변경
 - Tool -> Project Options -> Code Editing -> Change

* 단축키
 - Ctrl + Shift + N: 새 스크립트 만들기
 - Ctrl + Shift + C: 주석화
 - Ctrl + Shift + Enter: 소스코드 실행
 - Shift + Alt + K: 모든 단축키 확인
```

* [R_데이터 타입](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/데이터타입.R)
```
* 데이터 타입
 - class("데이터")
 - 수치형 타입 -> Numeric ex)class(0) -> Numeric
 - 정수형 타입 -> Integer(정수 뒤에 L을 붙이면 된다) ex)class(0L) -> Integer
 - 논리형 -> Logical ex)class(True)
 - 문자형 -> Character ex)class("1")
 - 복소수형 타입 -> Complex ex)class(3+5i)

* 데이터 종류
 차원에 따른 분류
  - 1차원
  - 2차원
  - N차원

 구성(타입)에 따른 분류
  - 단일형
  - 다중형
 
 값에 따른 분류
  - 범주형
  - 수치형
```

* [R_자료구조](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/자료구조.R)
```
자료구조
 	1차원		2차원		N차원
단일형  벡터		행렬		배열
다중형  리스트		데이터프레임	  - 

* 벡터
 - vector()로 사용 ex)vector("character", length = 5) 기본값 초기화
 - c("데이터1","데이터2") 문자 > 숫자 > 논리 / 자동형변환

* 행렬
 - matrix()로 사용 ex)matrix(nrow = 2, ncol = 3)

* 배열
 - array()로 사용 ex)array(dim=c(2,2,3))

* 리스트
 - list()로 사용 ex)list(1,T,"hi") / 열별로 다른 데이터 타입 저장 가능

* 데이터 프레임
 - data.frame()로 사용 ex)data.frame(vector, vector, ...)
```
## day2
* [R_변수 및 함수](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/변수와함수.R)
```
* 변수
 - 선언 ex)a <- 10
 - 초기화 ex)a <- NULL / NA와 다른 개념

* 변수 작명 규칙
 - 첫 글자에는 문자 또는 마침표(.) 만 사용가능
 - 두번째 글자 부터는 숫자, 밑줄 사용가능
 - 알파벳 대문자와 소문자는 별개의 문자 취급
 - 변수명 중간에 빈 칸 넣을 수 없음
 - 한국어 변수 사용가능

* 함수
 - 모든 객체 입출력 값으로 사용 가능

* AS 함수
  - 데이터 형식을 강제로 변환 시킴
 
* seq 함수
  - From 부터 by씩 증가하는 length개의 숫자로 이루어진 벡터 생성 ex)seq(length=5, from=3, by=2)

* rnorm 함수
  - 평균이 mean, 표준편차가 sd인 정규분포를 따르는 n개의 숫자로 이루어진 벡터 생성 ex)rnorm(n=4, mean=0, sd=1)

* runif 함수
  - [min, max] 범위 사이 n개의 난수로 이루어진 벡터 생성 ex) runif(n=4, min=1, max=100)
```
* [R_패키지](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/패키지.R)
```
* 패키지 설치
 - install.packages("패키지명")

* 패키지 확인
 - library()

* 패키지 불러오기
 - library("패키지명")
 - 패키지이름::패키지함수( )

* 패키지 문서 확인
https://cran.r-project.org/web/packages/available_packages_by_name.html -> 패키지 클릭 -> Reference manual:에서 확인 가능

* 패키지 정보 확인
 - library(help="패키지명")

* 패키지 업데이트
 - update.packages("패키지이름")

* 패키지 삭제
 - remove.packages("패키지이름")
```

* [R_연산자](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/연산자.R)
```
* 산술연산자
 - "^" 제곱 연산자
 - "%%" 나머지 연산자
 - "%/%" 몫 연산자 (나머지 버리는 나누기)

* 비교연산자
 - "a == b" a는 b와 같은가?
 - "a != b" a는 b와 다른가?

* 논리 연산자
 - "&" 벡터화 된 논리곱(AND)
 - "&&" 벡터화 되지 않은 논리곱 (첫번째 값만 비교)
 - "|"  벡터화 된 논리합(OR) (| : Shift + \)
 - "||" 벡터화 되지 않은 논리합 (첫번째 값만 비교)
 - "!" 논리 부정(NOT)

* Range함수
 - 입력 벡터의 최소값 최대값 출력 ex)range(c(1, 2, 3, 4, 5)) #15

* Paste
 - 값들을 하나의 문자열로 합치는 함수 ex)paste('안녕', '하세', '요', sep=“”) #'안녕하세요'

* Rep함수
 - rep(data,n): data로 초기화되는 길이가 n인 벡터생성 ex)rep(1,5) #c(1,1,1,1,1)
```

* [R_조건문](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/조건문.R)
```
* 조건문
 - if문
 - ifelse문 (삼항연산자) ex) ifelse(조건, "True", "False")
 - switch(입력 값, 비교값1=실행문1, 비교값2=실행문2, … , 기본 실행문)
   1) 비교값은 문자열 형식만 사용가능
   2) 범주형 데이터 처리 해야 하는경우 효율적
 - which(조건문) / 조건에 해당하는 입력 벡터 내부 값의 인덱스(위치) 출력
```
* [R_반복문](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/반복문.R)
```
* 반복문
- for문
	for( 변수 in 데이터){
	#(변수 사용한) 명령문
	}

- while문
	while( 조건식){
	#조건이 참인 경우 수행할 명령문
	}

- repeat문
	repeat{
	#명령문 (무한반복이 기본)
	}
```
```
* 사용자정의함수
	함수명 <- function(매개변수1, 매개변수2=초기 값, ...) {
	#실행문
	return(리턴 값) #생략 가능
	}
```

* [R_데이터 가져오기,내보내기](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/데이터_가져오기,내보내기.R)
```
데이터 가져오기
* 키보드 입력
 scan(what = character())

* 로컬파일
 - .txt
 - .csv
 - .xsxl
 - xml, json, html등

* read.table
 - 테이블(행렬) 형식 파일로부터 데이터 불러오는 함수 ex)read.table(파일명, header=TRUE, sep="", col.names=c(), na.string="")
 - col.names: 열 변수명 임의 설정가능 / header가 True라면 굳이 할 필요없음
 - na.string: 결측치(missing value)를 의미하는 문자가 어떤 것인지 지정

* read.csv
 - read.csv(파일명, header=TRUE, col.names=c(), na.string="")

* read.excel
 - read_excel(파일명, sheet=NULL, range=NULL, col_names=TRUE, col_types=NULL, na="")
 - sheet: sheet가 여러 개인 경우, sheet명 지정 / 지정하지 않으면 첫번째 sheet 데이터 불러옴
 - range: 데이터 불러올 범위 지정 가능
 - col_names: read.table의 header와 기능 동일
 - col_types: read.table의 col.names와 기능 동일
 - na: read.table의 na.string와 기능 동일
 - install.packages("readxl") 필요
--------------------------------------
데이터 내보내기
* write.table
 - write.table(데이터 프레임 변수, 저장할 파일 명, row.name=TRUE, quote=TRUE, sep="")
 - row.name: 행 번호 붙힐지 말지 선택
 - quote: character 형식 데이터에 쌍따옴표(“’) 붙힐지 말지 선택

* write.csv
 - write.csv(데이터 프레임 변수, 저장할 파일 명, row.name=TRUE, quote = TRUE)

* write.xlsx
 - write_xlsx(데이터 프레임 변수, path =저장할 파일 명)
 - install.packages("writexl") 필요
```
* [R_데이터프레임](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/데이터프레임.R)
* [R_시각화](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/시각화.R)
```
데이터 그리기
* plot()함수
 - 산점도, 그래프 그리기 함수
 - plot(x,y, type="p", main=NULL, xlab="", ylab="", xlim=c(), ylim=c())
 - x,y: 데이터의 x,y 축 값
 - type: 그래프 타입 (p: 점, l: 선, b: 점&선 등)
 - main: 그래프 제목
 - xlab: x축 이름
 - ylab: y축 이름
 - xlim: x축 값 범위
 - ylim: y축 값 범위
 - 이 외 다양한 매개변수 존재

* 다중 그래프 그리기
 - plot() 함수 사용하여 1개 그래프 그린 후, lines() 함수 사용하여 추가 그래프 그림
 - plot을 통해 그림을 그리고 lines를 통해 plot위에 추가로 그림을 덧칠하는 개념 
ex)
x = c(1,2,3,4,5,6)
y = c(2,4,5.8,7,7.5,8)
plot(x, type="o", pch=19, col="red", xlim=c(1,6), ylim=c(1,8))
lines(y, type="o", pch=19, col="green")

* 범례
 - legend()

* 파이차트
 - pie(data, label="", init.angle=0, radius=1)
 - label: 요소별 이름 등록
 - init.angle: 기준선 각도
 - radius: 원의 크기 조절

* 히스토그램
 - hist(data, breaks=NULL, frep=T)
 - break: 범주 개수
 - frep: 결과 출력 값 기준. T= 횟수, F= 비율(density)

* 상자수염그림
 - boxplot(data, boxwex=NULL)
 - boxwex: 상자의 넓이 조정

* 화면 분할
 - par(mfrow = c(분할 화면 행 개수, 분할 화면 열 개수))
```
* [R_실습_제주-김포비행기실적](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/실습_제주-김포비행기실적.R)
* [R_실습_코로나예방접종현황](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/실습_코로나예방접종현황.R)

* [R_dplyr패키지](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/dplyr패키지.R)
```
* dplyr 패키지
 - 데이터전처리시, 반복작업을줄여줌
 - 처리속도빠름
 - 파이프연산자제공

* 파이프 연산자
 - 형태: %>%
 - 의미: 왼쪽 변수를 오른쪽 함수에 적용
 - 가독성측면에서장점
 - Ctrl + Shift + M

* rename
 - rename(data, 변경 후 컬럼명1=기존 컬럼명1, 변경 후 컬럼명2=기존 컬럼명2, … )

* arrange
 - 데이터 프레임에서 특정 컬럼을 값을 기준으로 데이터 정렬
 - arrange(data, 컬럼 이름) #오름차순이 default
 - arrange(data, desc(컬럼 이름)) # 내림차순

* distinct
 - 데이터 프레임에서 특정 컬럼의 중복 값 제거
 - distinct(data, 컬럼 이름)

* select
 - 데이터 프레임에서 원하는 컬럼만 추출
 - select(dataframe, 컬럼명1, 컬럼명2, …)

* filter
 - 데이터 프레임에서 조건에 충족되는 행만 추출
 - filter(dataframe, 조건식)

* mutate
 - 기존 컬럼값을 사용하여 새로운 컬럼을 생성
 - mutate(dataframe, 생성할 컬럼명1 = 수식1, …)

* groupy_by
 - 특정 컬럼 값이 같은 데이터들을 같은 집단으로 묶어줌
 - group_by(exam, 컬럼 명)

* summarize
 - 그룹 단위 동일기능 수행 후, 새로운 데이터 프레임에 수행 결과 통합
 - summarize(grouped_df, 컬럼 명1=계산 식1, …)
```
* [R_실습_gapminder](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/실습_gapminder.R)
* [R_ggplot2](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/R/file/ggplot2.R)
```
* ggplot2
 - 데이터시각화패키지
 - 우수한사용성
 - 통계시각화기능제공

* qplot()
 - qplot(data='사용할 데이터 변수명', x='data에서 x축에 사용할 변수', y ='data에서 y축에 사용할 변수')
 - aes 요소 추가 가능(색깔 변화)
 - geom='boxplot' (그래프 모양 변화)

* ggplot()
 - ggplot은 문법 요소 층을 쌓을 시작 지점이 되는 함수
 - ggplot(data='데이터 변수 명', mapping = aes(x='data에서 x축에 사용할 변수', y ='data에서 y축에 사용할 변수', ...))

* geom_point() or geom_line() or geom_bar() or geom_histogram() or geom_boxplot()함수
 - ‘+’ 연산자 사용하여 추가 layer 추가
```
