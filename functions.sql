--pl/sql functions

--declare
create or replace function circle_are (radius number)
return number is

pi constant number (7,3) := 3.141;
area number(7,3);

begin
	area := pi * (radius * radius);
	return area;
end;
/

--call
set serveroutput on;
begin
	dbms_output.put_line(circle_area(25));
end;
/