-- 도서번호가 1인 도서 이름
SELECT bookname
  FROM Book
 WHERE bookid = 1;

-- 가격이 이만원 이상인 도서의 이름
SELECT bookname, price
  FROM Book
 WHERE price >= 20000;

-- 박지성의 총 구매액(박지성의 고객번호는 1번으로 놓고 작성)
SELECT *
  FROM Customer c
 WHERE c.name = '박지성';

SELECT sum(o.saleprice) AS "총 구매액"
  FROM Orders o
 WHERE o.custid = 1;

-- 박지성이 구매한 도서의 수(박지성의 고객번호는 1번으로 놓고 작성)
SELECT count(*) "총 구매도서수"
  FROM Orders o
 WHERE o.custid = 1;

-- 마당서점 도서 총 개수
SELECT count(*)
  FROM Book;

-- 마당서점 도서를 출고하는 출판사의 총 개수
SELECT DISTINCT publisher
  FROM Book;

-- 2014년 7월 4일~ 7월 7일 사이 주문받은 도서 주문번호
-- Date형은 문자열이 아니지만 날짜를 검색할때 문자열로 비교검색 가능
SELECT *
  FROM Orders o
 WHERE orderdate BETWEEN '2024-07-04'
   AND '2024-07-07';

-- 아래와 같이 문자열을 날짜로 변경해도 가능
SELECT *
  FROM Orders o
 WHERE orderdate BETWEEN str_to_date('2024-07-04', '%Y-%m-%d')
   AND str_to_date('2024-07-07', '%Y-%m-%d');

-- 2014년 7월 4일~ 7월 7일 사이 주문받은 도서를 제외한 도서의 주문번호
SELECT *
  FROM Orders o
 WHERE orderdate NOT BETWEEN '2024-07-04'
   AND '2024-07-07';

-- 성이 '김'씨인 고객의 이름과 주소
SELECT *
  FROM Customer c
 WHERE c.name LIKE '김%';

-- 고객중 김으로 시작하고 아로 끝나는 고객의 이름과 주소
SELECT c.name, c.address
  FROM Customer c
 WHERE c.name LIKE '김_아';