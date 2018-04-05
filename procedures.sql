--CREATE A PL/SQL PROCEDURE
CREATE OR REPLACE PROCEDURE pr_someProcedure is
  var_name varchar2(20) := 'MyName';
  var_web varchar2(20) := 'MyWebsite.com';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Name: ' ||var_name|| ' from ' ||var_web);
END pr_someProcedure;
/

--EXECUTE A PL/SQL PROCEDURE
SET SERVEROUTPUT ON;
EXEC pr_someProcedure;
--WORKS

--USE AN ANONYMOUS BLOCK TO EXECUTE A PROCEDURE
SET SERVEROUTPUT ON;
BEGIN
  pr_someProcedure;
END;
/
--WORKS
