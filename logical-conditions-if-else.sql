declare
    v_website varchar2(30) := 'xyz';
    v_author varchar2(30) := 'abc';
begin
    if v_website = 'xyz' and v_author = 'abc' then
        dbms_output.put_line('everything is awesome');
    end if
        dbms_output.put_line('give this video a thumbs up');
end;
/