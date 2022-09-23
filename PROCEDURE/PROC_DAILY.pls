--------------------------------------------------------
--  파일이 생성됨 - 금요일-9월-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PROC_DAILY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "NOWON"."PROC_DAILY" 
IS 
    v_tot number:=0;
    v_today daily_sale.day%TYPE:=trunc(sysdate); --시스템의 현재날짜만 시간0시0분0초
    v_check number:=0;
BEGIN

  select NVL(sum(price),0) into v_tot from sale where trunc(s_date)= v_today;
  --------------------
  --집계테이블 daily_sale 오늘정보 있는지 체크
  select count(*) into v_check from daily_sale where day=v_today;
  --------------------
  if v_check=0 then
      insert into daily_sale
      VALUES(SEQ_DAILY.NEXTVAL, v_today, v_tot);
      DBMS_OUTPUT.put_line('집계한 결과가 저장되었습니다.');
  else
      update daily_sale
      set tot=v_tot
      where day=v_today;
      DBMS_OUTPUT.put_line('집계한 결과가 수정되었습니다.');
  end IF;      
  commit;
END PROC_DAILY;

/
