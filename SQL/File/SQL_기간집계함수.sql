use bookstore;

/* 숫자 집계함수 */
SELECT GREATEST(29, -100, 34, 8, 25);
SELECT GREATEST("windows.com", "microsoft.com", "apple.com","가나다라","마이에스큐엘");

SELECT CEILING(30.75);
SELECT CEILING(40.25);
SELECT CEILING(40);

SELECT ROUND(30.75, 1);
SELECT ROUND(100.925, 2);

-- 평균도서가격
SELECT CEILING(SUM(PRICE)/COUNT(PRICE)) 평균
	,  SUM(PRICE)/COUNT(PRICE) 평균2
FROM BOOK;


/* 날짜 집계함수 */
-- WEEKOFYEAR(), YEARWEEK()
SELECT WEEKOFYEAR('2021-01-01');  -- 2020년의 53주에 해당.
SELECT WEEK('2021-01-01', 3);


  
SELECT WEEKOFYEAR('2021-01-05');  -- 2021년의 1주에 해당.

SELECT WEEKOFYEAR('2021-02-01');  -- 2021년의 5주에 해당.
SELECT WEEKOFYEAR('2021-12-31');  -- 2021년의 52주에 해당.

--
SELECT YEARWEEK('2021-01-01'); -- 2020년의 52주에 해당.

SELECT YEARWEEK('2021-01-03', 2);
SELECT YEARWEEK('2021-01-05');

SELECT YEARWEEK('2021-08-02', 7);

SELECT DAYOFYEAR("2021-01-01");
SELECT DAYOFYEAR("2021-06-15");
SELECT DAYOFYEAR("2021-12-31");


-- 주문한 년도별 가격과 평균가격

SELECT YEAR(ORDERDATE) 년도, 
	SUM(SALEPRICE) 합계, 
	CEILING(avg(saleprice)) 평균 
FROM ORDERS
GROUP BY YEAR(ORDERDATE);

SELECT YEAR(ORDERDATE) 년도, 
	SUM(SALEPRICE) 합계, 
	CEILING(SUM(SALEPRICE)/COUNT(SALEPRICE)) 평균 
FROM ORDERS
GROUP BY 1;
 

/* view와 집계 함수 */
-- 주별 최소/최대 판매가 집계
SELECT YEARWEEK(orderdate)
	, orderdate
    , MIN(saleprice)
    , MAX(saleprice)
FROM Orders
GROUP BY YEARWEEK(orderdate);


CREATE OR REPLACE VIEW v_Weekly(Weekly, Date, MIN, MAX)
AS SELECT YEARWEEK(orderdate) Weekly, orderdate 'Date', 
          MIN(saleprice) MIN, MAX(saleprice) MAX
   FROM Orders
   GROUP BY YEARWEEK(orderdate);

SELECT * FROM v_Weekly;


-- 특정 기간에 대한 요일별 판매량
-- 요일별 판매량 보고서는 특정 기간동안 Sun에서 Sat 요일별 판매량를 리포팅 해줍니다

-- 1. 수량 처리
SELECT   count(orderid) AS 수량 FROM ORDERS;
SELECT   count(custid) AS 수량 FROM ORDERS;

-- 2. 요일별 수량 처리
SELECT
  CASE DAYOFWEEK(orderdate)
    WHEN 1 THEN "Sun"
    WHEN 2 THEN "Mon"
    WHEN 3 THEN "Tue"
    WHEN 4 THEN "Wed"
    WHEN 5 THEN "Thu"
    WHEN 6 THEN "Fri"
    WHEN 7 THEN "Sat"
  END AS 요일,
  count(orderid) AS 수량
FROM Orders;


-- 3. 기간별 통계
SELECT
  CASE DAYOFWEEK(orderdate)
    WHEN 1 THEN "Sun"
    WHEN 2 THEN "Mon"
    WHEN 3 THEN "Tue"
    WHEN 4 THEN "Wed"
    WHEN 5 THEN "Thu"
    WHEN 6 THEN "Fri"
    WHEN 7 THEN "Sat"
  END AS 요일
	,count(custid) AS 수량
FROM Orders 
WHERE date_format(orderdate,"%Y-%m-%d") BETWEEN "2021-01-01" AND "2021-08-31"
GROUP BY DAYOFWEEK(orderdate);

-- 5. 뷰 생성
CREATE OR REPLACE VIEW v_weekday(요일, 수량)
AS
	SELECT
	  CASE DAYOFWEEK(orderdate)
		WHEN 1 THEN "Sun"
		WHEN 2 THEN "Mon"
		WHEN 3 THEN "Tue"
		WHEN 4 THEN "Wed"
		WHEN 5 THEN "Thu"
		WHEN 6 THEN "Fri"
		WHEN 7 THEN "Sat"
	  END AS 요일
	,count(custid) AS 수량
	FROM Orders 
	WHERE date_format(orderdate,"%Y-%m-%d") BETWEEN "2021-01-01" AND "2021-08-31"
	GROUP BY DAYOFWEEK(orderdate)
;

SELECT * FROM V_WEEKDAY;