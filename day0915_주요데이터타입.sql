--���̺����
--CREATE TABLE ���̺��̸�(�÷���1 Ÿ��,�÷���2,...);
--���̺� ����
--drop TABLE ���̺��̸�;

--���ڿ�
create table str(
    c1 CHAR(10),
    c2 VARCHAR2(10)
);
insert into str VALUES('��','��');
select * from str;
select c1, c2 from str;
select lengthb(c1) as charŸ��, lengthb(c2) varchar2Ÿ�� from str;
--���ڿ��� varchar2 �̿��սô� �������� ���ڿ�ó��
--insert into str VALUES('��','�����ٶ�');
drop table str;
create table str2(
    c1 CHAR(10),
    c2 VARCHAR2(5000)--4000byte���� ���
);
drop table str2;

create table str3(
    c1 CLOB,--�乮�ڿ�
    c2 VARCHAR2(4000 char)--4000byte���� ���
);

drop table str3;

--���� NUMBER ����,�Ǽ� ���ǥ��
create table nums(
    n1 number,
    n2 number(2), --2�ڸ� ����
    n3 number(2,0),--2�ڸ� �Ҽ���0
     --(p,s) p:��ȿ���� ���ڸ���, s:�Ҽ����ڸ�
    n4 number(2,2),--�Ҽ����Ʒ� 3�ڸ����� �ݿø��� �Ҽ����Ʒ� 2�ڸ� ���� �� ��ȿ�ڸ� �� ����2�ڸ� 
    n5 number(4,2),--�Ҽ����Ʒ� 3�ڸ����� �ݿø��� �Ҽ����Ʒ� 2�ڸ� ���� �� ��ȿ�ڸ� �� ����4�ڸ� 
    n6 number(4,-2)
);

insert into nums VALUES(10,10,10,0.11111,10,10);
--insert into nums VALUES(10,10,10,0.996,10,10);--0.996 -> 1.00 �Ұ���
insert into nums VALUES(10,10,10,0.994,10,10);--0.996 -> 1.00 �Ұ���
select * from nums;

create table nums2(
    n number(4,2)--�Ҽ����Ʒ� 2�ڸ����� ��4�ڸ�
);
insert into nums2 VALUES(99);
--insert into nums2 VALUES(100);--100.00
insert into nums2 VALUES(99.99);--99.99
insert into nums2 VALUES(99.994);--99.99
insert into nums2 VALUES(99.9951);--99.9959 -> 100.00
insert into nums2 VALUES(0.99999);--1.00
select * from nums2;

create table nums3(
    n number(4,-2)--   -1�ڸ����� �ݿø��� �Ҽ����Ʒ� -2�ڸ����� �������� �� ��ȿ����4�ڸ�
);

insert into nums3 VALUES(1234);-- 1234. -> 1200
select * from nums3;
insert into nums3 VALUES(12345);-- 12345. -> 12300
insert into nums3 VALUES(123456);-- 123456. -> 123500
insert into nums3 VALUES(999949.99999);--999949.9999-> 999900.0000
insert into nums3 VALUES(99.00499);-- 99.00499-> 100.000
insert into nums3 VALUES(49.9999999999999);-- 49.9999999999999-> 00.000


create table nums4(
    n1 number(2),
    n2 number(2,0)
);

insert into nums4 VALUES(99,99);
select * from nums4;
--insert into nums4 VALUES(99.5,99);-- 99.5 -> 100.0
--insert into nums4 VALUES(99,99.5);
insert into nums4 VALUES(0.99,99);
insert into nums4 VALUES(0.49,99);

create table nums5(
    n number
);
insert into nums5 values(1234567890123456789012345678901234567890);
select * from nums5;
insert into nums5 values(12345678901234567890123456789012345678901234567890);
insert into nums5 values(123456789012345678901234567890123456789012345678901234567890);
insert into nums5 values(0.123456789012345678901234567890123456789012345678901234567890123456789);
insert into nums5 values(0.1234567890123456789012345678901234567895);
insert into nums5 values(0.12345678901234567890123456789012345678955555555555);
insert into nums5 values(123456789012345.67890123456789012345678901234567890);

--����� ���� ���� ���� �Ǽ� ������������ number�� ����ϸ� �Ϲ����� ���ڸ�� ��밡��???

create table dtable(
    n number,
    c varchar2(255),
    d date
);
insert into dtable values(1,'���ڿ�������','20220915');
select * from dtable;
insert into dtable values(2,'���ڿ�������','2022/09/15');
insert into dtable values(2,'���ڿ�������','2022-09-15');
insert into dtable values(4,'���ڿ�������','220915');
insert into dtable values(5,'����ý����� ��¥ ���� sysdate �� ǥ�Ⱑ�� ', sysdate);
--insert into dtable values(2,'���ڿ�������',20220915); --��¥�� ''���ʿ� ǥ��

create table dtable2(
    d1 date,
    d2 timestamp
);
insert into dtable2 values(sysdate, sysdate);
insert into dtable2 values(systimestamp, systimestamp);
select * from dtable2;
--���̺� ������ ���ǻ���
--���̺���� �ܼ����� ����ϴ� ���� �ǰ��Ѵ�.--�ϳ��� ��ü�� ǥ���ϴ� ��ü
--������ ���̺� �̸��� �ߺ��Ұ�.
--���̺��� �����ϴ� �÷��� �ߺ��Ұ�
--�÷��� ������Ÿ���� �ݵ�� �����ؾ��Ѵ�.

create table dtable3(
    d1 --�ּ��� ������ Ÿ���� �����ؾ��Ѵ�. :���̺� �����Ұ�
);

create table Test3#$_1234(
    d1 number
);

