desc superheroes;
create table superheroes_backup as select * from superheroes where 1=2;

create or replace trigger superheroes_backup
before insert or delete or update on superheroes
for each ROW
ENABLE
BEGIN
    if inserting THEN
        insert into superheroes_backup (sh_name) values (:NEW.sh_name);
    elsif deleting THEN
        delete from superheroes_backup where sh_name = :old.sh_name;
    elsif updating THEN
        update superheroes_backup set sh_name = :new.sh_name where sh_name = :old.sh_name;
    end if;
end;
/