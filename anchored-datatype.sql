set serveroutput on;
declare
    v_fname students.first_name%TYPE;
begin
    select first_name into v_fname from students where stu_id=1;
    dbms_output.put_line(v_fname);
end;