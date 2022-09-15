--테이블생성
--CREATE TABLE 테이블이름(컬럼명1 타입,컬럼명2,...);
--테이블 삭제
--drop TABLE 테이블이름;

--문자열
create table str(
    c1 CHAR(10),
    c2 VARCHAR2(10)
);
insert into str VALUES('가','가');
select * from str;
select c1, c2 from str;
select lengthb(c1) as char타입, lengthb(c2) varchar2타입 from str;
--문자열은 varchar2 이용합시다 가변길이 문자열처리
--insert into str VALUES('가','가나다라');
drop table str;
create table str2(
    c1 CHAR(10),
    c2 VARCHAR2(5000)--4000byte까지 허용
);
drop table str2;

create table str3(
    c1 CLOB,--긴문자열
    c2 VARCHAR2(4000 char)--4000byte까지 허용
);

drop table str3;

--숫자 NUMBER 정수,실수 모두표현
create table nums(
    n1 number,
    n2 number(2), --2자리 정수
    n3 number(2,0),--2자리 소숫점0
     --(p,s) p:유효숫자 총자리수, s:소숫점자리
    n4 number(2,2),--소숫점아래 3자리에서 반올림한 소숫점아래 2자리 부터 총 유효자리 수 왼쪽2자리 
    n5 number(4,2),--소숫점아래 3자리에서 반올림한 소숫점아래 2자리 부터 총 유효자리 수 왼쪽4자리 
    n6 number(4,-2)
);

insert into nums VALUES(10,10,10,0.11111,10,10);
--insert into nums VALUES(10,10,10,0.996,10,10);--0.996 -> 1.00 불가능
insert into nums VALUES(10,10,10,0.994,10,10);--0.996 -> 1.00 불가능
select * from nums;

create table nums2(
    n number(4,2)--소숫점아래 2자리포함 총4자리
);
insert into nums2 VALUES(99);
--insert into nums2 VALUES(100);--100.00
insert into nums2 VALUES(99.99);--99.99
insert into nums2 VALUES(99.994);--99.99
insert into nums2 VALUES(99.9951);--99.9959 -> 100.00
insert into nums2 VALUES(0.99999);--1.00
select * from nums2;

create table nums3(
    n number(4,-2)--   -1자리에서 반올림한 소숫점아래 -2자리에서 왼쪽으로 총 유효숫자4자리
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


create table dtable(
    n number,
    c varchar2(255),
    d date
);
insert into dtable values(1,'문자열데이터','20220915');
select * from dtable;
insert into dtable values(2,'문자열데이터','2022/09/15');
insert into dtable values(2,'문자열데이터','2022-09-15');
insert into dtable values(4,'문자열데이터','220915');
insert into dtable values(5,'현재시스템의 날짜 적용 sysdate 로 표기가능 ', sysdate);
--insert into dtable values(2,'문자열데이터',20220915); --날짜도 ''안쪽에 표기

create table dtable2(
    d1 date,
    d2 timestamp
);
insert into dtable2 values(sysdate, sysdate);
insert into dtable2 values(systimestamp, systimestamp);
select * from dtable2;
--테이블 생성시 주의사항
--테이블명의 단수형을 사용하는 것은 권고한다.--하나의 객체를 표기하는 개체
--유저별 테이블 이름은 중복불가
--테이블을 구성하는 컬럼명도 중복불가
--컬럼의 데이터타입은 반드시 지정해야한다.

create table dtable3(
    d1 --최소한 데이터 타입은 지정해야한다. :테이블 생성불가
);

create table Test3#$_1234(
    d1 number
);

