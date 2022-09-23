--------------------------------------------------------
--  ������ ������ - �ݿ���-9��-23-2022   
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
    values(seq_daily.NEXTVAL, v_today, func_saletot(v_today));-- �Լ�ȣ���ؼ� ����������
    DBMS_OUTPUT.put_line('������ ����� ����Ǿ����ϴ�.');
  else
    update daily_sale
    set tot=func_saletot(v_today);
    DBMS_OUTPUT.put_line('������ ����� �����Ǿ����ϴ�.');
  end if;
  commit;
END PROC_DAILY02;

/
