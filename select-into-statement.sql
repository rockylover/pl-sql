set serveroutput on;
declare
    v_salary number(8);
begin
    select salary into v_salary from employees;
    where employee_id = 100;
    dbms_output.put_line(v_salary);
end;