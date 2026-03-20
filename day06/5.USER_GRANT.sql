
-- 사용자 생성
CREATE USER 'Wook01'@'%' IDENTIFIED BY 'MY123456';

-- 접속은 가능하지만 선택된 db가 없어 어떤것도 처리불가

-- 사용자 비밀번호 변경
ALTER USER 'Wook01'@'%' IDENTIFIED BY 'my123456';

-- 사용자 삭제
DROP USER 'Wook01';


-- 권한 부여
GRANT ALL PRIVILEGES ON sakila.* TO 'Wook01'@'%';
GRANT ALL PRIVILEGES ON madangdb.* TO 'Wook01'@'%';

-- 권한 해제
REVOKE ALL PRIVILEGES ON sakila.* FROM 'Wook01'@'%';