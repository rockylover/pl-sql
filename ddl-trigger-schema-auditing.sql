create table schema_audit (
    ddl_date date,
    ddl_user varchar2(15),
    object_created varchar2(15),
    object_name varchar2(15),
    ddl_operation varchar2(15)
);

create or replace trigger hr_audit_tr
after ddl on schema
begin
    insert into schema_audit values (
        sysdate,
        sys_context('userenv', 'current_user'),
        ora_dict_obj_type,
        ora_dict_obj_name,
        ora_sysevent
    );
end;
/