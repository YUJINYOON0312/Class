show user;

--테이블 생성
--CREATE TABLE table_name(
--   column1 datatype,
--   column2 datatype,
--   column3 datatype,
--   .....
--   columnN datatype,
--   PRIMARY KEY( one or more columns )
--);
-- 키 제약조건 중 PRIMARY KEY : 기본키
--테이블을 만들때 거의 모든 테이블은 PK 생성을 기본
--입력된 레코드가 일치하지 않도록 PK 를 적용

--1. PK 를 column 정의 방법
create table test01(
    no number PRIMARY KEY,-- 제약조건이름 SYS_C008383
    content VARCHAR2(255),-- null 허용
    writer VARCHAR2(255)
);
--시스템에서 제약조건 이름을 자동으로 부여해줍니다.
--pk 는 자동으로 인덱스를 만들어줍니다.: 빠른검색을 지원합니다.
--pk unique(중복불가)+not null

--insert into test01(no, content, writer) VALUES(null, '내용1','작성자1'); --null불가능
insert into test01(no, content, writer) VALUES(1, '내용1','작성자1');
select * from test01;
insert into test01(no, content, writer) VALUES(2, '내용1','작성자1');
insert into test01(no, content, writer) VALUES(3, '내용3',null);

create table test02(
    no number CONSTRAINT test02_pk PRIMARY KEY, --column 라인에 키 정의
    -- 제약조건이름을 지정할수 있다.(생략가능) CONSTRAINT 제약조건이름  PRIMARY KEY: 일반적으로 테이블명_pk
    content VARCHAR2(255),
    writer VARCHAR2(255)
);

--2. 테이블정의 방법
create table test03(
    no number,
    content VARCHAR2(255),
    writer varchar2(255),
    ---컬럼명과 타입을 모두 정의한 이후 정의할 수 있다.
    CONSTRAINT test03_pk PRIMARY KEY(no)
);

create table test04(
    no number,
    content VARCHAR2(255),
    writer varchar2(255),
    ---컬럼명과 타입을 모두 정의한 이후 정의할 수 있다.
    PRIMARY KEY(no)-- 제약조건이름은 시스템이 자동으로 부여 : SYS_숫자
);

desc test04;

--2. Foreing Key : 외래 키(참조 키)- 다른테이블의 pk를 현재테이블의 컬럼데이터로 사용
create table dept(
    dept_no NUMBER CONSTRAINT dept_pk PRIMARY KEY ,
    dept_name VARCHAR2(40)    
);
insert into dept VALUES(10, '영업부');
insert into dept VALUES(20, '관리부');
insert into dept VALUES(30, '생산부');
insert into dept VALUES(40, '마케팅');
insert into dept VALUES(50, '전산실');
select * from dept;

drop table emp;
create table emp(
    emp_no number,
    name VARCHAR2(20),
    dept_no number CONSTRAINT emp_fk REFERENCES dept(dept_no) ,--60,70
    --           REFERENCES 참조_테이블명(참조PK컬럼)
    CONSTRAINT emp_pk PRIMARY KEY(emp_no)
);
insert into emp VALUES(2201, '이름1', 10);--dept테이블의 pk컬럼에 존재하는 데이터만 넣기
insert into emp VALUES(2202, '이름2', 10);
insert into emp VALUES(2203, '이름3', 10);
insert into emp VALUES(2204, '이름4', 50);
insert into emp VALUES(2205, '이름5', 20);
insert into emp VALUES(2206, '이름6', 30);
insert into emp VALUES(2207, '이름7', 40);
insert into emp VALUES(2208, '이름8', 40);
insert into emp VALUES(2209, '이름9', null);
select * from emp;
--Forien Key 외래키 : 참조키 
--다른 테이블의 pk를 참조하는 키
--키 정의시 REFERENCES 참조테이블(참조컬럼)
--추가 제약이 없는경우 null 허용

--fk연결되어있는 데이블은 조인(join)을 통해서 조회 가능
select * from emp e, dept d
where e.dept_no=d.dept_no;




drop table emp_test;
create table emp_test(
    emp_no number,
    name VARCHAR2(20),
    dept_name VARCHAR2(40),
    CONSTRAINT emp_test_pk PRIMARY KEY(emp_no)
);

insert into emp_test VALUES(2201,'첫번째','영업부');
insert into emp_test VALUES(2202,'두번째','영업부');
insert into emp_test VALUES(2203,'세번째','영업부');
insert into emp_test VALUES(2204,'네번째','전산실');
insert into emp_test VALUES(2205,'오번째','전산실');
insert into emp_test VALUES(2206,'육번째','전산실');

select * from emp_test;

--3. Unique
--중복데이터 불가합니다.
--자동으로 index를 만들어 줌
--null 허용하고 여러개 넣을수 있음: not null을 지정하면 null 허용하지 않음
create table member(
    mno number primary key,
    email varchar2(40) CONSTRAINT member_email_uk UNIQUE,
    name varchar2(40)
);
insert into member values(1, 'test01@test.com','테스트1');
insert into member values(2, 'test02@test.com','테스트1');
insert into member values(3, null,'테스트1');
insert into member values(4, null,'테스트1');
desc member;
select * from member;

create table member2(
    mno number primary key,
    email varchar2(40) UNIQUE,--system이 이름 만들어 줌
    name varchar2(40)
);
--4. not null 제약조건
-- column line 에서만 정의 가능
-- 제약조건타입 Check
create table member4(
    mno number primary key,
    email varchar2(40) UNIQUE not null,--system이 이름 만들어 줌
    name varchar2(40) constraint member4_name_nn not null
);

create table member5(
    mno number primary key,
    email varchar2(40) UNIQUE not null,--system이 이름 만들어 줌
    name varchar2(40)--,
    --constraint member5_namenn not null(name)-- not null은 테이블 정의 불가능
    
);
--테이블 수정(컬럼추가, 컬럼삭제, 데이터타입변경, 컬럼이름변경)
alter table 

-- 5. Check 제약조건
--컬럼의 데이터 타입의 범위 통해 허용가능한 조건으로 제한
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
insert into Person(name) values('이름');-- gender 컬럼데이터가 없을때 default 'F'가 적용
select  * from person;

--자주쓰는제약 pk, fk, not null









