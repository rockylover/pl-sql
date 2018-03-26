set serveroutput on;
declare
    v_test varchar2(15);
begin
    v_test := 'some text';
    dbms_output.put_line(v_test);
end;