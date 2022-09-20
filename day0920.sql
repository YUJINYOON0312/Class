select * from departments;
select employee_id �����ȣ, email, d.department_name, d.department_id
from employees e, departments d --107��*27��
where e.department_id=d.department_id
order by 1;
--from ���ڿ��� ���̺��,���̺�� ������ ����
--���̺��̸��� ����ϴ� ��Ī ��밡�� : employees e
--��Ī.�÷��� , ���̺��.�÷��� ���ÿ� �ΰ� ���Ұ�

select * 
from employees, departments
where employees.department_id=departments.department_id;
--īƼ�� ��, ũ�ν� ����
-- where �� �������� �߻�, �����Ͱ� ������ ���� ���ϰ� �߻�
--Oracle
select * 
from employees, departments;
--ANSI
select * 
from employees cross join departments;
---------------------------------------------
--Equi join (����� )
--Oracle
select employee_id, email, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id --���� ����
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
--3�����̺�
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
--employees, jobs ���̺���
-- employee_id, email, job_title �� ��ȸ�ϼ���.
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
--employees ���̺��� MANAGER_ID(FK) --�ڽ��� ���̺��� �����ϴ� ����
--employee_id, first_name||' '||last_name, MANAGER_ID, �Ŵ����� �̸�= first_name||' '||last_name
select e1.employee_id, e1.first_name||' '||e1.last_name ����̸�, e1.MANAGER_ID �Ŵ�����ȣ, e2.first_name||' '||e2.last_name �Ŵ����̸�
from employees e1,employees e2
WHERE e1.MANAGER_ID = e2.EMPLOYEE_ID
order by 1;

--ANSI
select e1.employee_id, e1.first_name||' '||e1.last_name ����̸�, e1.MANAGER_ID �Ŵ�����ȣ, e2.first_name||' '||e2.last_name �Ŵ����̸�
from employees e1 join employees e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by 1;

-------------------------------------------------------------------------
--EQUI join-NATURAL join
select e.employee_id, e.email, job_id, j.job_title
from employees e  NATURAL join jobs j;
--���������� �ڵ����� ������ ���������� ���ι����� ����
--job_id : �� ���̺��� �����÷���(job_id)�� �ĺ��� ������ 

-- NATURAL join�� ��Ī�� ����� �ʿ䰡 �����
-------------------------------------------------------------------------
select employee_id, email, job_id, job_title
from employees
join jobs 
using (job_id); --�������̺��� job_id�� �����մϴ�.
--using ���� ���δ�� (�÷�)�� �����մϴ�.
--�� �÷��̸��� ������ �̸����� ����������ؿ�
--------------------------------------------------
--#####EQUI JOIN#######
-- join on
-- NATURAL JOIN
-- SELF JOIN : �ϳ��� ���̺��� ���, ��Ī���� ����
-- join using
-- FK�� null �ΰ�� ���������� ��ȸ���� �ʾƿ�: ���δ���� �������� �ʾƿ�
---------------------------------------------------
--###### OUTER JOIN #######
--RIGHT OUTER JOIN
--oracle
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e, departments d
where e.department_id(+) = d.department_id; -- ��.FK=������.PK
--���-�μ�
--+��(���)���� null�� ��µǰ�, �ϳ��� �������� ���� ������ �μ� ��� ǥ��

--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e RIGHT OUTER JOIN departments d
on e.department_id = d.department_id; -- ��.FK=������.PK
--������ ���̺��� ����: ������
--���������ʴ� ���� �÷��� null�� ǥ��
-----------------------------------------------------------------------------
--LEFT OUTER join
--oracle
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id(+); -- ��.FK=������.PK
-- +���������̺� EQUI���輺������ ������ null��� 
-- �������̺��� �����ϵ� ���ϵ� ��� ���
--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e LEFT OUTER join departments d
on e.department_id = d.department_id; -- ��.FK=������.PK
------------------------------------------------------------------------------
--FULL OUTER join
--ANSI
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e FULL OUTER join departments d
on e.department_id = d.department_id; -- ��.FK=������.PK
--���� ���̺��ο� �������ǿ� �ش����� �ʴ� ��� ���

--select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
--from employees e , departments d
--where e.department_id(+) = d.department_id(+); -- ��.FK=������.PK

--oracle ������ (+) ����� 1���� ����
--FULL outer join�� oracle���������� union���� ����
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id(+) -- ��.FK=������.PK
union --�ߺ����� ����
select e.employee_id, e.email, e.department_id,d.department_id, d.department_name
from employees e , departments d
where e.department_id(+) = d.department_id; -- ��.FK=������.PK

---------------------------------------------------------------------
create table std(
    std_id number,
    name varchar2(20),
    point number
);
insert into std VALUES(5, '�̸�5', 100);
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
--NON EQUI JOIN (������)
-- ���������� EQ(=) �� �ƴ� ����(<,>,BETWEEN a AND b ���)���� �����ϴ� ����
select s.std_id �й�, s.name �̸�, s.point ����, p.grade ���
from std s, point p
where s.point >=p.min and s.point <=p.max
order by 1;

select s.std_id �й�, s.name �̸�, s.point ����, p.grade ���
from std s, point p
where s.point BETWEEN p.min AND p.max
order by 1;

---------------------------------------------------------------------------
--------��������(SUB QUERY) ------------------------------------------------------
---------------------------------------------------------------------------
-- �ϳ��� sql �� ����� �ٸ� sql���� �����ϱ� ����
-- �ΰ��̻��� sql���� �ϳ��� sql������ �����Ͽ� ó���ϴ� ���

--where ������ ����ϴ� �������� : ������ ��������,������ ��������
--from ���ڿ����� ���̺��,��,(��������): �ζ��� �� 
--select ���� ���� �������� : ��Į�� ��������

--100������� �޿����� �� ���� �޴� ���
select * from employees
where salary >=(select salary from employees where employee_id=101);

select * from employees
where salary =17000;

select salary from employees where employee_id=101;
--������ ���, �����÷�

--������� ������� 50���μ��� salary ��� ���� ��������� �����?
select * from employees
where salary < (select avg(salary) from employees WHERE department_id=10);
-- ������ �񱳿�����: = , >, >=,<,<= ,!=,<>
-- ���������� �������� �ϳ��� �ุ ���;��ؿ�
-- ������������ �׷��Լ��� ������ϴ� ����
-- �����ѿ��(PK) �� �������Ǻ� 

-- employee_id�� 120�� ����� �μ��� ����� ��ü ��ձ޿����� ���� �޴� ��� ��
-- employee_id, email, salary, department_id ���

select employee_id, email, salary, department_id
from employees
where department_id = (select department_id from employees WHERE employee_id=120)
and salary > (select avg(salary) from employees);

--------------------------------------------------------------------------------------
--������ ��������
-- ������ ������: in, any, all �� ���
-- ���������� ����� ������ ������ �������� ���������� ���
select * from employees 
where department_id in (select distinct department_id from employees where salary > 10000);
--
--list_name �� ��ҹ��� ���о��� sh�� ���Ե� ����� ����
select employee_id, email,salary
from employees
where employee_id in(select employee_id from employees where lower(first_name) like '%sh%');

--60�� �μ��� ������� �޿����� ���� �޴� �����?
select * from employees
where salary < (select min(salary) from employees where department_id=60);

select * from employees
where salary <any (select salary from employees where department_id=60);
select * from employees
where employee_id in(select manager_id from departments where manager_id is not null);


select * from employees
where not exists (select department_id from departments where manager_id is not null and manager_id>205);
--���������� �������� ���������� ���� �����ϴ� ������ exists
select department_id from departments where manager_id is not null and manager_id>150;

---�����÷� (��ȸ����� 2���̻��ΰ�� )
--pairwise �����÷� ��������
--��� �÷������� �������� �������� �÷� ���� ���ƾ��մϴ�.
select * from employees
where (email, salary) = (select email, salary from employees where last_name='Chen');
--select email, salary from employees where last_name='Chen';

--�� �μ��� �ּұ޿��� �޴� ������
select * from employees
where (department_id, salary) in (select department_id, min(salary) from employees group by department_id having department_id is not null);

select department_id, min(salary) from employees group by department_id having department_id is not null;

---------------------------------------------
--unpairwise �����÷� ��������
select * from employees
where department_id in(select department_id from  employees group by department_id)
and salary in(select min(salary) from employees group by department_id );

select department_id from  employees group by department_id;

--��ȣ���� �������� : main������ ���̺��� sub�������� ���
--�� �μ��� ��� �޿����� ���� �޴� ����� ����
select * from employees e1
where salary > (select avg(salary) from employees e2 where e1.department_id=e2.department_id)
order by department_id;

--select department_id, avg(salary) from employees GROUP by department_id;

-----------------------------------------------------------------------------
select employee_id, email, department_name
from employees e, departments d
where e.department_id=d.department_id(+)
order by 1;


select employee_id, email, (select department_name from departments d WHERE e.department_id= d.department_id) �μ��̸�
from employees e
order by 1;








