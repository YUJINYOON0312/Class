--------------------------------------------------------
--  파일이 생성됨 - 금요일-9월-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PROC_DAILY02
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "NOWON"."PROC_DAILY02" AS 
    v_today daily_sale.day%TYPE:=trunc(sysdate);
    v_check number:=0;
BEGIN
  select count(*) into v_check from daily_sale
  where day=v_today;
  
  if v_check=0 then
    insert into daily_sale
    values(seq_daily.NEXTVAL, v_today, func_saletot(v_today));-- 함수호출해서 데이터적용
    DBMS_OUTPUT.put_line('집계한 결과가 저장되었습니다.');
  else
    update daily_sale
    set tot=func_saletot(v_today);
    DBMS_OUTPUT.put_line('집계한 결과가 수정되었습니다.');
  end if;
  commit;
END PROC_DAILY02;

/
