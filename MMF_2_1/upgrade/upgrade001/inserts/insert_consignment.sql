DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

INSERT INTO &&USER_NAME..consignment(consignment_id, status, transport_id) VALUES ('1', 'ready', '0');
INSERT INTO &&USER_NAME..consignment(consignment_id, status, transport_id) VALUES ('2', 'forming', '1');

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME