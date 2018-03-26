set serveroutput on;
declare
    v_num number := 9;
begin
    if v_num < 10 then
    dbms_output.put_line('inside if');
    end if;
        dbms_output.put_line('outside if');
end;
/