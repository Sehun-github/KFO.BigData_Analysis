# SQL 언어

> #### MySQL Workbench 사용
> #### 한줄 실행: Ctrl + Enter
> #### 여러줄 실행: Ctrl + Shift + Enter
> #### [Error Code: 1055] - SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); 삽입
> #### SAFE UPDATES 해제 - SET SQL_SAFE_UPDATES=0;

## day1
* [SQL_시작](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_시작.sql)
* [SQL_UnSafe](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_UnSafe.sql)
* [SQL_Operators(산술 연산자)](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_Operators(산술연산자).sql)
* [SQL_중복제거,if,case](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_중복제거,if,case.sql)
* [SQL_공백제거,문자추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_공백제거,문자추출.sql)
* [SQL_날짜,형변환](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_날짜,형변환.sql)

## day2
* [SQL_Subquery](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_Subquery.sql)
```
* 서브쿼리
 From 절에서 서브쿼리 사용
 - FROM 절안에서 쓴 서브쿼리의 결과는 뷰처럼 취급
 - 인라인 뷰라고도 부른다
```
* [SQL_집계함수,GROUP_BY](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_집계함수,GROUP_BY.sql)
```
* GROUP BY
 - 열의 같은 데이터의 행을 하나로 묶음
 - 컬럼의 조건을 HAVING절에 지시
 - SELECT 절에는 GROUP BY절을 사용한 [컬럼]과 [집계함수]만 나올수 있음
```
* [SQL_Join](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_Join.sql)
```
* 조인함수
 - 일반조인: SQL문에서는 주로 동등조인을 사용
 - 외부조인: FROM절에 조인 종류를 적고 ON을 이용하여 조인조건을 명시
```

* [SQL_집합연산자](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_집합연산자.sql)
```
* 집합연산자
 - MySQL에는 MINUS, INTERSECT 연산자 지원X
 - 합집합 -> UNION
 - INTERSECT(교집합) -> IN
 - MINUS(차집합) -> NOT IN

* 다중행 연산자
 - IN
 - ANY, SOME -> Or 개념
 - ALL -> And 개념
 - EXISTS -> 하나라도 일치하면 참
```
* [SQL_View](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_View.sql)
```
* 뷰(View)
 - 하나 이상의 테이블을 결합하여 만든 가상의 테이블
 - SELECT와 조건 구문 등을 통해서 쿼리로서 가상의 테이블로 생성한다.

 - CREATE VIEW ~ AS -> 뷰 생성
 - CREATE OR REPLACE VIEW ~ AS -> 뷰가 없으면 생성, 뷰가 있으면 변환
```

* [SQL_기간집계함수](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_기간집계함수.sql)
```
* 다양한 집계함수
 - GREATEST(숫자1,숫자2,...) -> 주어진 수 중 제일 큰 수 리턴
 -=LEAST(숫자1,숫자2,...) ->  주어진 수 중 제일 작은 수 리턴
: 문자도 가능 -> 가장 앞의 글자 비교

* 기간 집계함수
 - DAYOFYEAR(날짜): 일년을 기준으로 날짜까지의 날짜수
 - DAYOFWEEK(날짜): 요일(1:일~7:토) 반환
 - WEEKOFYEAR(날짜): 날짜의 주 수(0~53)를 반환한다. WEEK(date,3)호환
 - YEARWEEK(날짜,[mode]) 주 범위 0~53를 반환한다. mode(0~7)로 주 지정
 - MONTHNAME(날짜) 월의 영문(January~December)반환
 - WEEK(날짜,[mode]) 일년중 몇번째주
 - QUARTER(날짜) 날짜가 4분기중에서 몇분기인지를 반환
 - DATE_FORMAT(날짜,format) dt속성을 날짜형식 format으로 반환
```

* [SQL_기초통계](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_기초통계.sql)
```
* 기초통계
 - Format(data, 0) -> #,###
 - Format(data, 1) -> #,###.#
 - Format(data, 2) -> #,###.##

 - substring_index(str, delim, count)
 - ex) select substring_index('www.mysql.com', '.', 1); -- 'www'
```
* [SQL_순위,소계](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_순위,소계.sql)
```
* 순위
 - RANK(속성): 공동 순위만큼 건너뜀 1,2,2,4
 - DENSE_RANK(속성): 공동 순위를 뛰어넘지 않음 ex) 1,2,2,3
 - ROW_NUMBER(속성): 공동 순위를 무시함 ex)1,2,3.4

* PARTION BY사용
 - 그루핑해서 순위를 매기고자 할때 사용

* ROOLUP: 소계, 합계 집계
 - 방법1 : GROUP BY 그룹컬럼 WITH ROLLUP
 - 방법2 : Having IS NOT NULL
```

## day3

* [SQL_sakila](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_sakila.sql)
```
* 샘플 데이터 준비
 sakila import 방법
 - Server -> Data Import -> Import From Self-Contained File -> Import Progress -> Start Import

*데이터 다어그램으로 확인
 - DataBase -> Reverse Engineer -> Next -> 확인할거 고르기
```

* [SQL_OpenData](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/SQL/File/SQL_OpenData.sql)
```
대용량 데이터 덤프시 My.ini
 - 대용량 덤프시 패킷 크기가 중요
 
 * csv 파일을 sql로 수정
 - https://sqlitebrowser.org/dl/ 다운
 - SQLite -> 테이블 생성하기 -> 아무거나(데이터베이스구조가 하나는 있어야함) -> 파일 -> import -> csv 가져오기(인코딩 기타- EUC-KR, 첫행에 필드명 포함) -> 파일 -> 내보내기 -> 데이터를 SQL로 내보내기 - 데이터만 내보내기 -> 저장
 
* 저장한 SQL -> 노트패드 -> BEGINE TRANSCATION - START TRANSCATION -> 테이름 이름을 역쿼트(`bicycle_202012`) -> 컬럼이름 삭제(values앞)

* my.ini 수정
 - C:\ProgramData\MySQL\MySQL Server 8.0\my.ini를 메모장에서 관리자 모드로 열기
   -> max_allowed_packet 크기를 200M 이상 저장 -> 작업관리자 -> 서비스 -> MySQL 8.0 -> 서비스 재시작

* sql 가져오기
 - Server 메뉴 -> data import -> import from Self-Containded File -> import progress -> Start import
```

