DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

INSERT INTO box VALUES ('1', 'Transport', '2', '20');
INSERT INTO box VALUES ('2', 'Sale', '3', '10');

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
