create or replace procedure deneme
(
d_name IN VARCHAR2,
d_university out varchar2
)
IS
BEGIN
select university INTO d_university from internship
where name=d_name;
end;
/
SET SERVEROUTPUT ON;
DECLARE
d_name varchar2(20):='Aysegul';
d_university varchar2(60);
BEGIN
deneme(d_name, d_university);
dbms_output.put_line('University is:'||d_university);
end;