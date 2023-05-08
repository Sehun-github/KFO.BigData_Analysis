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
