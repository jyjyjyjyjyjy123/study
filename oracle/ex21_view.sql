

/*

	VIEW, 뷰
	- 데이터베이스 객체 중 하나(테이블, 제약사항, 뷰, 시퀀스)
	- 가상 테이블, 뷰 테이블 등..
	- 테이블처럼 사용한다.(***)
	- 쿼리의 양을 줄인다
	
	- 정의: 쿼리(SQL)을 저장하는 객체
	
	CREATE [OR REPLACE]VIEW 뷰이름
	AS
	SELECT 문;
	
 */
CREATE OR REPLACE VIEW VWINSA
AS
SELECT * FROM TBLINSA;

SELECT * FROM VWINSA; -- TBLINSA 테이블의 복사본 > 실명 뷰
SELECT * FROM (SELECT * FROM TBLINSA) --> 익명 뷰

-- 영업부 직원
CREATE OR REPLACE VIEW 영업부
as
SELECT 
	NUM, NAME, CITY, BASICPAY, SUBSTR(SSN, 8) AS SSN 
FROM TBLINSA 
	WHERE BUSEO = '영업부';

SELECT * FROM 영업부;


-- 비디오 대여점 사장 > 날마다 > 업무
CREATE OR REPLACE VIEW VWCHECK
AS
SELECT
	M.NAME AS 회원,
	V.NAME AS 비디오,
	R.RENTDATE AS 언제,
	R.RETDATE AS 반납
FROM TBLRENT r
	INNER JOIN TBLVIDEO V
		ON r.VIDEO = v.SEQ
			INNER JOIN TBLMEMBER M
				ON M.SEQ = R."MEMBER";


SELECT * FROM VWCHECK;

CREATE OR REPLACE VIEW vwcheck
AS
SELECT
	M.NAME AS 회원,
	V.NAME AS 비디오,
	R.RENTDATE AS 언제,
	R.RETDATE AS 반납,
	R.RENTDATE + G.PERIOD AS 반납예정일,
	SYSDATE - (R.RENTDATE + G.PERIOD) AS 연체일,
	(SYSDATE - (R.RENTDATE + G.PERIOD)) * G.PRICE AS 금액
FROM TBLRENT R
	INNER JOIN TBLVIDEO V
		ON r.VIDEO = v.SEQ
			INNER JOIN TBLMEMBER M
				ON M.SEQ = R."MEMBER"
					INNER JOIN TBLGENRE G
						ON G.SEQ = R.SEQ;
					
					
-- TBLINSA > 서울 직원 > VIEW
CREATE OR REPLACE VIEW VWSEOUL
AS
SELECT * FROM TBLINSA WHERE CITY = '서울';

SELECT * FROM VWSEOUL; -- 20

UPDATE TBLINSA SET city = '제주' WHERE NUM IN (1001,1005,1008); -- 3명이사

SELECT * FROM TBLINSA WHERE CITY ='서울'; -- 17
SELECT * FROM VWSEOUL; -- 17

-- 신입 사원 > 업무 > 연락처 확인 > 문자 발송
SELECT * FROM TBLINSA;	-- 신입 계정 > TBLINSA 접근권한 X
SELECT * FROM VWTEL;	-- 신입 계정 > VWTEL 접근 읽기 권한 O

CREATE OR REPLACE VIEW VWTEL
AS
SELECT NAME, BUSEO, JIKWI, TEL FROM TBLINSA;


-- 뷰 사용 주의점
-- 1. SELECT > 실행O > 뷰는 읽기 전용으로 사용한다.
-- 2. INSERT > 실행O > 절대 사용 금지
-- 3. UPDATE > 실행O > 절대 사용 금지
-- 4. DELETE > 실행O > 절대 사용 금지
CREATE OR REPLACE VIEW VWTODO -- 단순뷰 > 뷰의 SELECT가 1개의 테이블로 구성
AS
SELECT * FROM TBLTODO;

SELECT * FROM VWTODO;
INSERT INTO VWTODO VALUES ((SELECT MAX(SEQ) + 1 FROM TBLTODO),'할일', SYSDATE, NULL);

UPDATE VWTODO SET title = '할일 완료' WHERE SEQ = 25;













































