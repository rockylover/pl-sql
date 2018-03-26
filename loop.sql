set serveroutput on;
declare
    v_counter number := 0;
    v_result number;
begin
    loop
        v_counter := v_counter + 1;
        v_result := 19 * v_counter;
        dbms_output.put_line('19' || 'x' || v_counter || ' = ' || v_result);
        if v_counter >= 10 then
            exit;
        end if;
    end loop;
end;
/