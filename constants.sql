set serveroutput on;
declare
    v_pi constant number(7,6) default 3.143434;
begin
    dbms_output.put_line(v_pi);
end;