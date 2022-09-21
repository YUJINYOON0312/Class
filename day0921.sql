-----------------------------------------------------------------------
-----스칼라 서브쿼리-----------------------------------------------------
-----------------------------------------------------------------------
--select employee_id, email,(select '데이터' from dual) from employees;
--select employee_id, email,(select department_name from departments) from employees;
-- 다중행 서브쿼리(결과가 2개이상 나오는 쿼리)는 사용불가능
-- 단일행 서브쿼리만 사용가능
select 
employee_id, 
email,
(select department_name from departments d where e.department_id=d.department_id) 부서명,
(select job_title from jobs j  where j.job_id=e.job_id)직종
from employees e
order by 1;


---------
--oracle문법
select employee_id, email, department_name, job_title
from employees e, departments d, jobs j
WHERE e.department_id = d.department_id(+) and e.job_id = j.job_id
order by 1;

select employee_id, email, department_name, job_title
from  departments d,employees e, jobs j
WHERE d.department_id(+) = e.department_id  and e.job_id = j.job_id
order by 1;

--ANSI 문법
select employee_id, email, department_name, job_title
from employees e LEFT OUTER join departments d
on d.department_id=e.department_id
join jobs j
on e.job_id = j.job_id
order by 1;
---------------------------------------------------------------------
-----인라인 뷰 서브쿼리-------------------------------------------
---------------------------------------------------------------------
-- from절 뒤에도 테이블 대신 조회된결과(VIEW)를 서브쿼리로 사용
--입사일기준으로 11~15째 입사한 사원를 확인하고 싶을때
--emp 
select * from emp;
select rownum ,e.* from emp e order by hire_date;
-----------------------------------------------------------
select 
*
from
    (select rownum rnum,e.*
    from (select * from emp  order by hire_date) e)
where rnum BETWEEN 1 and 10;
-----------------------------------------------------------
--페이징 처리시 원하는 위치에 데이터만 갖고 올 수 있
-----------------------------------------------------------
desc employees;

CREATE VIEW EMP
AS 
SELECT 
   employee_id as emp_id,
   first_name||' '||last_name as name,
   email,
   phone_number as phone,
   hire_date,
   salary as sal,
   commission_pct as com_pct,
   manager_id as mgr,
   department_id as dept_id
FROM 
    employees
ORDER by 1
WITH READ ONLY;  


select * from emp;
update emp
set sal=1000
where emp_id=100;
delete emp where emp_id=100;


--시퀀스
--1. 연속적인 번호를 생성시켜주는 기능
--2. 숫자형pk에 적용하여 사용가능
create sequence seq_emp
INCREMENT BY 1 START WITH 1;
--시퀀스로 번호 생성
select seq_emp.nextval from dual;
--현재 시퀀스가 발행한 번호
select seq_emp.currval from dual;
--9999999999999999999999999999
--1234567890123456789012345678

create table board(
    no NUMBER PRIMARY KEY,
    tittle VARCHAR2(255) not null,
    content VARCHAR2(255) not null,
    writer varchar2(40) not null,
    read_count number default 0,
    created_date TIMESTAMP default systimestamp,
    updated_date timestamp 
);
create SEQUENCE seq_board START WITH 1 INCREMENT BY 1;
--seq_board.nextval;
insert into board (no, tittle, content,writer, updated_date)
VALUES(
seq_board.nextval , 
'제목'||seq_board.currval,
'내용'||seq_board.currval,
'작성자'||seq_board.currval,
systimestamp
);
commit;
select * from board;





