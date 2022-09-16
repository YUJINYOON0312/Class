--SQL : DDL, DCL(TCL), DML
--DML(CRUD) : insert, select, update, delete
desc employees;
--select column명,column명 from 테이블이름 where 조건문 order by 정렬할 대상 column명;
-- 모든column을 출력하기위해 * 사용, 원하는 column만 명시 조회 가능

select EMPLOYEE_ID, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID  
from employees
where EMPLOYEE_ID > 200
order by HIRE_DATE desc, EMPLOYEE_ID desc; --정렬 기본은 asc 오름차순정렬 --내림차순 desc

-- column을 별칭으로 표기 가능 : column명 as 별칭 (as 는 생략가능)
select FIRST_NAME||' '||LAST_NAME FULL_NAME from employees;

-- distinct : 중복된 결과 나올경우 하나만 표기
select distinct department_id from employees
order by department_id;

select distinct job_id from employees;

--숫자타입은 산술연산가능(+,-,*,/) :  null 과 연산시 결과는 무조건 null
select employee_id 사원번호, salary 기본급여, commission_pct 보너스지급율,
salary*NVL(commission_pct,0) 보너스 , salary+salary*NVL(commission_pct,0) 총받을급여
from employees
order by 5 desc;
--order by 5 : 5-column의 출력순서로 정렬가능

select * from employees
where last_name='King'; -- column명 = 검색어 정확하게 일치하는 데이터 검색
--문자열 '' java ==
--column명이나 테이블이름은 대소문자 구분없이 사용함
--입력된 데이터 검색시에는 대소문자 구분함
select * from employees;
select * from employees
where last_name like '%ll';--마지막글 ll로 끝나는 모든글자
select * from employees
where last_name like 'll%';--시작글자가 ll로 시작하는 모든글자

select * from employees
where last_name like '%ll%';--시작글자,중간이든,마지막이든  ll을 포함하는 모든글자


select * from employees
where hire_date='03/06/17';

select * from employees
where hire_date='03-06-17';

select * from employees
where hire_date <= '05/01/01' 
order by hire_date;

select * from employees
where manager_id is null; --null데이터를 조건으로 검색가능

select * from employees
where commission_pct is null;

--null이 아닌 데이터 검색
select * from employees
where commission_pct is not null;

select distinct department_id from employees order by 1;

select email, department_id from employees
where department_id>20 and department_id<50
order by 2;

select email, department_id from employees
where department_id>100 or department_id<30
order by 2;

select email, department_id from employees
where department_id>=20 and department_id<=40
order by 2;

select email, department_id from employees
where department_id between 20 and 40
order by 2;

--단일행 연산자, 다중행 연산자, 그룹연산자, 함수

--테이블에 총레코드 수 
select count(*) from employees;

select count(employee_id) from employees;
select count(commission_pct) from employees;--null 제외











