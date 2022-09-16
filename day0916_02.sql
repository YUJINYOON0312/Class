show user;

--���̺� ����
--CREATE TABLE table_name(
--   column1 datatype,
--   column2 datatype,
--   column3 datatype,
--   .....
--   columnN datatype,
--   PRIMARY KEY( one or more columns )
--);
-- Ű �������� �� PRIMARY KEY : �⺻Ű
--���̺��� ���鶧 ���� ��� ���̺��� PK ������ �⺻���� �ϴ°ɷ�...
--�Էµ� ���ڵ尡 ��ġ���� �ʵ��� PK �� ����

--1. PK �� column ���� ���
create table test01(
    no number PRIMARY KEY,-- ���������̸� SYS_C008383
    content VARCHAR2(255),-- null ���
    writer VARCHAR2(255)
);
--�ý��ۿ��� �������� �̸��� �ڵ����� �ο����ݴϴ�.
--pk �� �ڵ����� �ε����� ������ݴϴ�.: �����˻��� �����մϴ�.
--pk unique(�ߺ��Ұ�)+not null

--insert into test01(no, content, writer) VALUES(null, '����1','�ۼ���1'); --null�Ұ���
insert into test01(no, content, writer) VALUES(1, '����1','�ۼ���1');
select * from test01;
insert into test01(no, content, writer) VALUES(2, '����1','�ۼ���1');
insert into test01(no, content, writer) VALUES(3, '����3',null);

create table test02(
    no number CONSTRAINT test02_pk PRIMARY KEY, --column ���ο� Ű ����
    -- ���������̸��� �����Ҽ� �ִ�.(��������) CONSTRAINT ���������̸�  PRIMARY KEY: �Ϲ������� ���̺��_pk
    content VARCHAR2(255),
    writer VARCHAR2(255)
);

--2. ���̺����� ���
create table test03(
    no number,
    content VARCHAR2(255),
    writer varchar2(255),
    ---�÷���� Ÿ���� ��� ������ ���� �����Ҽ� �ִ�.
    CONSTRAINT test03_pk PRIMARY KEY(no)
);

create table test04(
    no number,
    content VARCHAR2(255),
    writer varchar2(255),
    ---�÷���� Ÿ���� ��� ������ ���� �����Ҽ� �ִ�.
    PRIMARY KEY(no)-- ���������̸��� �ý����� �ڵ����κο� : SYS_����
);

desc test04;

--2. Foreing Key : �ܷ� Ű(���� Ű)- �ٸ����̺��� pk�� �������̺��� �÷������ͷ� ���
create table dept(
    dept_no NUMBER CONSTRAINT dept_pk PRIMARY KEY ,
    dept_name VARCHAR2(40)    
);
insert into dept VALUES(10, '������');
insert into dept VALUES(20, '������');
insert into dept VALUES(30, '�����');
insert into dept VALUES(40, '������');
insert into dept VALUES(50, '�����');
select * from dept;

drop table emp;
create table emp(
    emp_no number,
    name VARCHAR2(20),
    dept_no number CONSTRAINT emp_fk REFERENCES dept(dept_no) ,--60,70
    --           REFERENCES ����_���̺��(����PK�÷�)
    CONSTRAINT emp_pk PRIMARY KEY(emp_no)
);
insert into emp VALUES(2201, '�̸�1', 10);--dept���̺��� pk�÷��� �����ϴ� �����͸� �־��ּ���
insert into emp VALUES(2202, '�̸�2', 10);
insert into emp VALUES(2203, '�̸�3', 10);
insert into emp VALUES(2204, '�̸�4', 50);
insert into emp VALUES(2205, '�̸�5', 20);
insert into emp VALUES(2206, '�̸�6', 30);
insert into emp VALUES(2207, '�̸�7', 40);
insert into emp VALUES(2208, '�̸�8', 40);
insert into emp VALUES(2209, '�̸�9', null);
select * from emp;
--Forien Key �ܷ�Ű : ����Ű 
--�ٸ� ���̺��� pk�� �����ϴ� Ű
--Ű ���ǽ� REFERENCES �������̺�(�����÷�)
--�߰� ������ ���°�� null ����մϴ�.

--fk����Ǿ��ִ� ���̺��� ����(join)�� ���ؼ� ��ȸ�Ҽ� �־��
select * from emp e, dept d
where e.dept_no=d.dept_no;




drop table emp_test;
create table emp_test(
    emp_no number,
    name VARCHAR2(20),
    dept_name VARCHAR2(40),
    CONSTRAINT emp_test_pk PRIMARY KEY(emp_no)
);

insert into emp_test VALUES(2201,'ù��°','������');
insert into emp_test VALUES(2202,'�ι�°','������');
insert into emp_test VALUES(2203,'����°','������');
insert into emp_test VALUES(2204,'�׹�°','�����');
insert into emp_test VALUES(2205,'����°','�����');
insert into emp_test VALUES(2206,'����°','�����');

select * from emp_test;

--3. Unique
--�ߺ������� �Ұ��մϴ�.
--�ڵ����� index�� ������ݴϴ�.
--null ����ϰ� ������ ������ �־��: not null�� �����ϸ� null ������� �ʾƿ�
create table member(
    mno number primary key,
    email varchar2(40) CONSTRAINT member_email_uk UNIQUE,
    name varchar2(40)
);
insert into member values(1, 'test01@test.com','�׽�Ʈ1');
insert into member values(2, 'test02@test.com','�׽�Ʈ1');
insert into member values(3, null,'�׽�Ʈ1');
insert into member values(4, null,'�׽�Ʈ1');
desc member;
select * from member;

create table member2(
    mno number primary key,
    email varchar2(40) UNIQUE,--system�� �̸� ��������
    name varchar2(40)
);
--4. not null ��������
-- column line ������ ���� ����
-- ��������Ÿ�� Check �Դϴ�.
create table member4(
    mno number primary key,
    email varchar2(40) UNIQUE not null,--system�� �̸� ��������
    name varchar2(40) constraint member4_name_nn not null
);

create table member5(
    mno number primary key,
    email varchar2(40) UNIQUE not null,--system�� �̸� ��������
    name varchar2(40)--,
    --constraint member5_namenn not null(name)-- not null�� ���̺� ���� �Ұ���
    
);
--���̺� ����(�÷��߰�, �÷�����, ������Ÿ�Ժ���, �÷��̸�����)
alter table 

-- 5. Check ��������
--�÷��� ������ Ÿ���� ���� ���� ��밡���� �������� ����
create table student(
    std_no number primary key,
    name varchar2(20) not null,
    --grade number not null check(grade>=1 and grade<=4) --1~4    
    grade number not null constraint student_grade_ck  check(grade between 1 and 4) --1~4    
);

--6. default
drop table Person;
create table Person(
    name varchar2(20),
    --gender varchar2(1) default 'F' check(gender='F' or gender='M' or gender='f' or gender='m')
    gender varchar2(1) default 'F' check(gender =any('M','m','F','f')) not null
);
insert into Person values(null, 'f');
insert into Person values(null, 'M');
insert into Person values(null, default);
insert into Person(name) values('�̸�');-- gender �÷������Ͱ� ������ default 'F'�� ����
select  * from person;

--���־������� pk, fk, not null









