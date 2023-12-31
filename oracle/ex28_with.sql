

/*
	
	[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
    
    from 절 서브쿼리 > 이름 없는 테이블 > 1회용 테이블
    from 절 테이블 > 이름 있는 테이블 > N회용 테이블
    
    with 절
    - 인라인뷰(from 절 서브쿼리)에 이름을 붙이는 기술 
	
	WITH 임시테이블명 AS (서브 쿼리)
	SELECT 문;

*/
SELECT * FROM (SELECT name, buseo, jikwi FROM tblinsa WHERE city = '서울');
WITH seoul AS (SELECT name, buseo, jikwi FROM tblinsa WHERE city = '서울')
SELECT * FROM seoul;


SELECT * FROM(SELECT name, age, couple FROM tblmen WHERE weight < 90) a
	INNER JOIN (SELECT name, age, couple FROM tblwomen WHERE weight > 60)b
		ON a.couple = b.name;


WITH a AS (SELECT name, age, couple FROM tblmen WHERE weight < 90),
	 b AS (SELECT name, age, couple FROM tblwomen WHERE weight > 60)
SELECT *
FROM a 
	INNER JOIN b 
		 ON a.couple = b.name;
		
-- null 함수
-- null value 
-- null을 치환하는 함수
		
-- 1. nvl(컬럼, 값)
-- 2. nvl2(컬럼, 값, 값)

-- CASE 사용시
SELECT 
	name,
	CASE
		WHEN population IS NOT NULL THEN population
		WHEN population IS NULL THEN 0
	END
FROM tblcountry;
-- NULL함수 사용시
SELECT name, nvl(population, 0) FROM tblcountry;

CREATE TABLE TBLITEM
(
	SEQ NUMBER PRIMARY KEY,
	NAME VARCHAR2(100) NOT NULL,
	COLOR VARCHAR2(50) NOT NULL
);

INSERT INTO tblitem (seq, name, color) 
	VALUES (1, '마우스', 'white');

INSERT INTO tblitem (seq, name, color) 
	VALUES ((SELECT max(seq)+1 FROM tblitem), '마우스', 'white');


SELECT * FROM tblitem;

DELETE FROM tblitem;



SELECT
	name, nvl2(population, '인구수O', '인구수X')
FROM tblcountry;


























































