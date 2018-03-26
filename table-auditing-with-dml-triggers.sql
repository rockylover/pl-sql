create table sh_audit (
    new_name varchar2(30),
    old_name varchar2(30),
    user_name varchar2(30),
    entry_date varchar2(30),
    operation varchar2(30),    
);

create or replace trigger superheroes_audit
before insert or delete or update on superheroes_audit
for each row
enable

declare
v_user varchar2(30);
v_date varchar2(30);

begin

select user, to_char(sysdate, 'DD/MON/YYYY HH24:MI:SS') into v_user, v_date from dual;

if inserting then
    insert into sh_audit(new_name, old_name, user_name, entry_date, operation)
    values (:NEW.sh_name, null, v_user, v_date, 'insert');
elsif deleting then
    insert into sh_audit(new_name, old_name, user_name, entry_date, operation)
    values (null, :OLD.sh_name, v_user, v_date, 'delete');
elsif updating then
    insert into sh_audit(new_name, old_name, user_name, entry_date, operation)
    values (:NEW.sh_name, :OLD.sh_name, v_user, v_date, 'update');
end if;
end;
/