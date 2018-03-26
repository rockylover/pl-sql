create table superheroes (
    sh_name varchar2(20)
);

set serveroutput on;
create or replace trigger bi_superheroes
before insert on superheroes
for each row
enable
declare
    v_user varchar2(20);
begin
    select user into v_user from dual;
    dbms_output.put_line('you just inserted a line' || v_user);
end;
/

set serveroutput on;
create or replace trigger bi_superheroes
before update on superheroes
for each row
enable
declare
    v_user varchar2(20);
begin
    select user into v_user from dual;
    dbms_output.put_line('you just inserted a line' || v_user);
end;
/