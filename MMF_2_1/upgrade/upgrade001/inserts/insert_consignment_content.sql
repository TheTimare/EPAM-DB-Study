DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

INSERT INTO &&USER_NAME..consignment_content VALUES ('1', '2', '89');
INSERT INTO &&USER_NAME..consignment_content VALUES ('1', '1', '29');

INSERT INTO &&USER_NAME..consignment_content VALUES ('2', '1', '29');

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
