DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

INSERT INTO consignment_content VALUES ('1', '2', '89');
INSERT INTO consignment_content VALUES ('1', '1', '29');

INSERT INTO consignment_content VALUES ('2', '1', '29');

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
