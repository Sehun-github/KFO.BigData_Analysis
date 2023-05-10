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
  - 평균이 mean, 표준편차가 sd인 정규분포를 따르는 n개의 숫자로 이루어진 벡터 생성 ex)rnorm(n=4, mean =0, sd=1)

* runif 함수
  - [min, max] 범위 사이 n개의 난수로 이루어진 벡터 생성 ex) runif(n=4, min=1, max=100)
```

