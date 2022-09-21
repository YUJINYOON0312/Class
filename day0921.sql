-----------------------------------------------------------------------
-----��Į�� ��������-----------------------------------------------------
-----------------------------------------------------------------------
--select employee_id, email,(select '������' from dual) from employees;
--select employee_id, email,(select department_name from departments) from employees;
-- ������ ��������(����� 2���̻� ������ ����)�� ���Ұ���
-- ������ ���������� ��밡��
select 
employee_id, 
email,
(select department_name from departments d where e.department_id=d.department_id) �μ���,
(select job_title from jobs j  where j.job_id=e.job_id)����
from employees e
order by 1;


---------
--oracle����
select employee_id, email, department_name, job_title
from employees e, departments d, jobs j
WHERE e.department_id = d.department_id(+) and e.job_id = j.job_id
order by 1;

select employee_id, email, department_name, job_title
from  departments d,employees e, jobs j
WHERE d.department_id(+) = e.department_id  and e.job_id = j.job_id
order by 1;

--ANSI ����
select employee_id, email, department_name, job_title
from employees e LEFT OUTER join departments d
on d.department_id=e.department_id
join jobs j
on e.job_id = j.job_id
order by 1;
---------------------------------------------------------------------
-----�ζ��� �� ��������-------------------------------------------
---------------------------------------------------------------------
-- from�� �ڿ��� ���̺� ��� ��ȸ�Ȱ��(VIEW)�� ���������� ���
--�Ի��ϱ������� 11~15° �Ի��� ����� Ȯ���ϰ� �;��
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
--����¡ ó���� ���ϴ� ��ġ�� �����͸� ���� �ü� �־��
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


--������
--1. �������� ��ȣ�� ���������ִ� ���
--2. ������pk�� �����Ͽ� ��밡��
create sequence seq_emp
INCREMENT BY 1 START WITH 1;
--�������� ��ȣ ����
select seq_emp.nextval from dual;
--���� �������� ������ ��ȣ
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
'����'||seq_board.currval,
'����'||seq_board.currval,
'�ۼ���'||seq_board.currval,
systimestamp
);
commit;
select * from board;





