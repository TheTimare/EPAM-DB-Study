SET SERVEROUTPUT ON

INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('1', '2', 'ready', '0');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('2', '1', 'forming', '1');

SET SERVEROUTPUT OFF