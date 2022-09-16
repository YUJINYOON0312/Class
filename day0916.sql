--SQL : DDL, DCL(TCL), DML
--DML(CRUD) : insert, select, update, delete
desc employees;
--select �÷���,�÷��� from ���̺��̸� where ���ǹ� order by �����Ҵ���÷���;
-- ����÷��� ����ϱ����� * ���, ���ϴ� �÷��� ��� ��ȸ ����

select EMPLOYEE_ID, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID  
from employees
where EMPLOYEE_ID > 200
order by HIRE_DATE desc, EMPLOYEE_ID desc; --���� �⺻�� asc ������������ --�������� desc

-- �÷����� ��Ī���� ǥ�� ���� : �÷��� as ��Ī (as �� �����ص� �ǿ�)
select FIRST_NAME||' '||LAST_NAME FULL_NAME from employees;

-- distinct : �ߺ��� ��� ���ð�� �ϳ��� ǥ��
select distinct department_id from employees
order by department_id;

select distinct job_id from employees;

--����Ÿ���� ������갡��(+,-,*,/) :  null �� ����� ����� ������ null
select employee_id �����ȣ, salary �⺻�޿�, commission_pct ���ʽ�������,
salary*NVL(commission_pct,0) ���ʽ� , salary+salary*NVL(commission_pct,0) �ѹ����޿�
from employees
order by 5 desc;
--order by 5 : 5-�÷��� ��¼����� ���İ���

select * from employees
where last_name='King'; -- �÷��� = �˻��� ��Ȯ�ϰ� ��ġ�ϴµ����� �˻�
--���ڿ� '' java ==
--�÷����̳� ���̺��̸��� ��ҹ��� ���о��� �����
--�Էµ� ������ �˻��ÿ��� ��ҹ��� ������
select * from employees;
select * from employees
where last_name like '%ll';--�������� ll�� ������ ������
select * from employees
where last_name like 'll%';--���۱��ڰ� ll�� �����ϴ� ������

select * from employees
where last_name like '%ll%';--���۱���,�߰��̵�,�������̵�  ll�� �����ϴ� ������


select * from employees
where hire_date='03/06/17';

select * from employees
where hire_date='03-06-17';

select * from employees
where hire_date <= '05/01/01' 
order by hire_date;

select * from employees
where manager_id is null; --null�����͸� �������� �˻�����

select * from employees
where commission_pct is null;

--null�� �ƴ� ������ �˻�
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

--������ ������, ������ ������, �׷쿬����, �Լ�

--���̺� �ѷ��ڵ� �� 
select count(*) from employees;

select count(employee_id) from employees;
select count(commission_pct) from employees;--null ����











