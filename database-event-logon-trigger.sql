create table hr_evnt_audit (
    event_type varchar2(20),
    logon_date date,
    logon_time varchar2(15),
    logoff_date date,
    logoff_time varchar2(15)
)

create or replace trigger hr_logon_audit
after logon on schema
begin
    insert into hr_evnt_audit values (
        ora_sysevent,
        sysdate,
        to_char(sysdate, 'hh24:mi:ss'),
        null,
        null
    );
    commit;
end;
/