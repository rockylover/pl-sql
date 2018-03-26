create table trainer (
    full_name varchar2(20)
);

create table subject (
    subject_name varchar2(20)
);

create view vw_SampleView as
select full_name, subject_name from trainer, subject;
insert into vw_SampleView values ('Rakesh', 'Java');

--make this view updateable

create or replace trigger tr_io_insert
instead of insert on vw_SampleView
for each row
begin
    insert into trainer (full_name) values (:new.full_name);
    insert into subject (subject_name) values (:new.subject_name);
end;
/