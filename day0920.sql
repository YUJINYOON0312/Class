select * from departments;
select employee_id 사원번호, email, d.department_name, d.department_id
from employees e, departments d --107개*27개
where e.department_id=d.department_id
order by 1;
--from 절뒤에는 테이블명,테이블명 여러개 가능
--테이블이름을 대신하는 별칭 사용가능 : employees e
--별칭.컬럼명 , 테이블명.컬럼명 동시에 두개 사용불가

select * 
from employees, departments
where employees.department_id=departments.department_id;
--카티션 곱, 크로스 조인
-- where 절 누락으로 발생, 데이터가 많으면 성능 저하가 발생
--Oracle
select * 
from employees, departments;
--ANSI
select * 
from employees cross join departments;
---------------------------------------------
--Equi join (등가조인 )
--Oracle
select employee_id, email, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id --조인 조건
ORDER by 1;
--ANSI
select employee_id, email, e.department_id, department_name
from employees e join departments d
on e.department_id = d.department_id
ORDER by 1;

select employee_id, email, e.department_id, department_name
from employees e INNER join departments d
on e.department_id = d.department_id
ORDER by 1;


---------------------------------------------
--Oracle
select employee_id, email, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id and e.department_id=20
ORDER by 1;
--ANSI
select employee_id, email, e.department_id, department_name
from employees e join departments d
on (e.department_id = d.department_id)
where d.department_name like '%Fi%'
ORDER by 1;
-----------------------------------------------------------------
--3개테이블
--Oracle
select employee_id, email, e.department_id, department_name, city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id=l.location_id
ORDER by 1;

--ANSI
select employee_id, email, e.department_id, department_name, city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id=l.location_id
ORDER by 1;
-----------------------------------------------------------
--employees, jobs 테이블에서
-- employee_id, email, job_title 을 조회하세요.
--oracle
select employee_id, email, job_title
from employees e,jobs j
where e.job_id=j.job_id
order by 1;

--ANSI
select employee_id, email, job_title
from employees e join jobs j
on (e.job_id=j.job_id)
order by 1;

-----------------------------------------------
--employees 테이블에서 MANAGER_ID(FK) --자신의 테이블을 참조하는 관계
--employee_id, first_name||' '||last_name, MANAGER_ID, 매니저의 이름= first_name||' '||last_name
select e1.employee_id, e1.first_name||' '||e1.last_name 사원이름, e1.MANAGER_ID 매니저번호, e2.first_name||' '||e2.last_name 매니저이름
from employees e1,employees e2
WHERE e1.MANAGER_ID = e2.EMPLOYEE_ID
order by 1;

--ANSI
select e1.employee_id, e1.first_name||' '||e1.last_name 사원이름, e1.MANAGER_ID 매니저번호, e2.first_name||' '||e2.last_name 매니저이름
from employees e1 join employees e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by 1;

-------------------------------------------------------------------------
--EQUI join-NATURAL join
select e.employee_id, e.email, job_id, j.job_title
from employees e  NATURAL join jobs j;
--조인조건을 자동으로 조사후 내부적으로 조인문장이 생성
--job_id : 두 테이블의 조인컬럼명(job_id)은 식별자 사용금지 

-- NATURAL join은 별칭을 사용할 필요가 없어요
-------------------------------------------------------------------------
select employee_id, email, job_id, job_title
from employees
join jobs 
using (job_id); --양쪽테이블의 job_id로 조인합니다.
--using 절에 조인대상 (컬럼)을 지정합니다.
--단 컬럼이름은 동일한 이름으로 만들어져야해요
--------------------------------------------------
--#####EQUI JOIN#######
-- join on
-- NATURAL JOIN
-- SELF JOIN : 하나의 테이블에서 사용, 별칭으로 구분
-- join using
-- FK가 null 인경우 조인조건은 조회되지 않아요: 조인대상이 존재하지 않아요
---------------------------------------------------
--###### OUTER JOIN #######
--RIGHT OUTER JOIN
--oracle
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e, departments d
where e.department_id(+) = d.department_id; -- 왼.FK=오른쪽.PK
--사원-부서
--+쪽(사원)에는 null이 출력되고, 하나도 참조하지 않은 나머지 부서 모두 표기

--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e RIGHT OUTER JOIN departments d
on e.department_id = d.department_id; -- 왼.FK=오른쪽.PK
--오른쪽 테이블이 기준: 모두출력
--참조하지않는 왼쪽 컬럼은 null로 표기
-----------------------------------------------------------------------------
--LEFT OUTER join
--oracle
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id(+); -- 왼.FK=오른쪽.PK
-- +오른쪽테이블 EQUI관계성립되지 않으면 null출력 
-- 왼쪽테이블은 참조하든 않하든 모두 출력
--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e LEFT OUTER join departments d
on e.department_id = d.department_id; -- 왼.FK=오른쪽.PK
------------------------------------------------------------------------------
--FULL OUTER join
--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e FULL OUTER join departments d
on e.department_id = d.department_id; -- 왼.FK=오른쪽.PK
--양쪽 테이블모두에 동등조건에 해당하지 않는 대상도 출력

--select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
--from employees e , departments d
--where e.department_id(+) = d.department_id(+); -- 왼.FK=오른쪽.PK

--oracle 에서는 (+) 대상은 1개만 가능
--FULL outer join은 oracle문법에서는 union으로 가능
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id(+) -- 왼.FK=오른쪽.PK
union --중복제거 병합
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e , departments d
where e.department_id(+) = d.department_id; -- 왼.FK=오른쪽.PK

---------------------------------------------------------------------
create table std(
    std_id number,
    name varchar2(20),
    point number
);
insert into std VALUES(5, '이름5', 100);
alter table std add CONSTRAINT std_pk PRIMARY KEY(std_id);
select * from std;
commit;

create table point(
    no number PRIMARY key,
    grade VARCHAR2(10),
    min number,
    max number
);

insert into point VALUES(5, 'F', 0, 59);
commit;
select * from point;
------------------------------------------------------------
--NON EQUI JOIN (비등가조인)
-- 조인조건이 EQ(=) 가 아닌 조건(<,>,BETWEEN a AND b 등등)으로 조인하는 쿼리
select s.std_id 학번, s.name 이름, s.point 점수, p.grade 등급
from std s, point p
where s.point >=p.min and s.point <=p.max
order by 1;

select s.std_id 학번, s.name 이름, s.point 점수, p.grade 등급
from std s, point p
where s.point BETWEEN p.min AND p.max
order by 1;

---------------------------------------------------------------------------
--------서브쿼리(SUB QUERY) ------------------------------------------------------
---------------------------------------------------------------------------
-- 하나의 sql 의 결과를 다른 sql문에 전달하기 위해
-- 두개이상의 sql문이 하나의 sql문으로 연결하여 처리하는 방법

--where 절에서 사용하는 서브쿼리 : 단일행 서브쿼리,다중행 서브쿼리
--from 절뒤에오면 테이블명,뷰,(서브쿼리): 인라인 뷰 
--select 절에 오는 서브쿼리 : 스칼라 서브쿼리

--100번사원의 급여보다 더 많이 받는 사람
select * from employees
where salary >=(select salary from employees where employee_id=101);

select * from employees
where salary =17000;

select salary from employees where employee_id=101;
--단일행 결과, 단일컬럼

--모든사원을 대상으로 50번부서의 salary 평균 보다 적은사원의 명단은?
select * from employees
where salary < (select avg(salary) from employees WHERE department_id=10);
-- 단일행 비교연산자: = , >, >=,<,<= ,!=,<>
-- 서브쿼리의 실행결과가 하나의 행만 나와야해요
-- 서브쿼리에서 그룹함수를 결과로하는 쿼리
-- 유일한요소(PK) 와 동등조건비교 

-- employee_id가 120인 사원의 부서의 사원중 전체 평균급여보다 많이 받는 사원 의
-- employee_id, email, salary, department_id 출력

select employee_id, email, salary, department_id
from employees
where department_id = (select department_id from employees WHERE employee_id=120)
and salary > (select avg(salary) from employees);

--------------------------------------------------------------------------------------
--다중행 서브쿼리
-- 다중행 연산자: in, any, all 와 사용
-- 서브쿼리의 결과가 여러개 나오는 쿼리문을 서브쿼리로 사용
select * from employees 
where department_id in (select distinct department_id from employees where salary > 10000);
--
--list_name 에 대소문자 구분없이 sh가 포함된 사원의 정보
select employee_id, email,salary
from employees
where employee_id in(select employee_id from employees where lower(first_name) like '%sh%');

--60번 부서의 사원들의 급여보다 적게 받는 사원은?
select * from employees
where salary < (select min(salary) from employees where department_id=60);

select * from employees
where salary <any (select salary from employees where department_id=60);
select * from employees
where employee_id in(select manager_id from departments where manager_id is not null);


select * from employees
where not exists (select department_id from departments where manager_id is not null and manager_id>205);
--서브쿼리의 실행결과의 존재유무에 따라 결정하는 연산자 exists
select department_id from departments where manager_id is not null and manager_id>150;

---다중컬럼 (조회결과가 2개이상인경우 )
--pairwise 다중컬럼 서브쿼리
--대상 컬럼개수랑 서브쿼리 실행결과의 컬럼 개수 같아야합니다.
select * from employees
where (email, salary) = (select email, salary from employees where last_name='Chen');
--select email, salary from employees where last_name='Chen';

--각 부서별 최소급여를 받는 사원명단
select * from employees
where (department_id, salary) in (select department_id, min(salary) from employees group by department_id having department_id is not null);

select department_id, min(salary) from employees group by department_id having department_id is not null;

---------------------------------------------
--unpairwise 다중컬럼 서브쿼리
select * from employees
where department_id in(select department_id from  employees group by department_id)
and salary in(select min(salary) from employees group by department_id );

select department_id from  employees group by department_id;

--상호연관 서브쿼리 : main쿼리의 테이블을 sub쿼리에서 사용
--각 부서의 평균 급여보다 많이 받는 사원의 정보
select * from employees e1
where salary > (select avg(salary) from employees e2 where e1.department_id=e2.department_id)
order by department_id;

--select department_id, avg(salary) from employees GROUP by department_id;

-----------------------------------------------------------------------------
select employee_id, email, department_name
from employees e, departments d
where e.department_id=d.department_id(+)
order by 1;


select employee_id, email, (select department_name from departments d WHERE e.department_id= d.department_id) 부서이름
from employees e
order by 1;








