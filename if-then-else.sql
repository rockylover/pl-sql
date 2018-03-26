set serveroutput on;
declare
    v_num number := &enter_a_number;
begin
    if mod(v_num,2) = 0 then
        dbms_output.put_line(v_num || 'is even');
    else
        dbms_output.put_line(v_num || 'is odd');
    end if;
    dbms_output.put_line('if then else construct completed');
end;
/