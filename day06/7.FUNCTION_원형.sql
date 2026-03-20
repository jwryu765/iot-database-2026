-- 함수 원형 fnc_interest
CREATE FUNCTION fnc_interest (
	price INT
) RETURNS int
BEGIN
	-- 변수 선언
	DECLARE myInterest INT;
	-- 가격이 30,000원 이상이면 10%, 그 미만은 5% 이윤남김
	
	IF price >= 30000 THEN
		SET myInterest = price * 0.1;
	ELSE
		SET myInterest = price * 0.05;
	END IF;
	
	RETURN myInterest;
END

-- 함수 원형
CREATE FUNCTION fnc_balanceGrade(
	balance INTEGER
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE grade varchar(20);

	IF balance >= 50000 THEN
		SET grade = 'VIP';
	ELSEIF balance >= 20000 THEN
		SET grade = 'GOLD';
	ELSE
		SET grade = 'SILVER';
	END IF;
	
	RETURN grade;
END