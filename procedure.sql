PROCEDURE deneme
(
d_name IN VARCHAR2,
d_university OUT varchar2
)
IS
BEGIN
SELECT university INTO d_university FROM internship
WHERE name=d_name;
END;
/
SET SERVEROUTPUT ON;
DECLARE
d_name varchar2(20):='Aysegul';
d_university varchar2(60);
BEGIN
deneme(d_name, d_university);
dbms_output.put_line('University is:'||d_university);
END;
