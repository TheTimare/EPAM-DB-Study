DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE &&USER_NAME..customer ( 
  customer_id INT NOT NULL,
  consignment_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  CONSTRAINT customer_pk 
    PRIMARY KEY (customer_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_customer ON customer(customer_id ASC)
  ),
  CONSTRAINT customer_fk
    FOREIGN KEY (consignment_id)
    REFERENCES &&USER_NAME..consignment(consignment_id)
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN customer.customer_id IS 'Уникальный идентификатор заказчика';
COMMENT ON COLUMN customer.consignment_id IS 'Уникальный идентификатор заказа';
COMMENT ON COLUMN customer.name IS 'Имя заказчика';
COMMENT ON COLUMN customer.address IS 'Адресс заказчика';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

/*
DROP TABLE &&USER_NAME..composition;
DROP TABLE &&USER_NAME..nutritional_value;

DROP TABLE &&USER_NAME..customer;
DROP TABLE &&USER_NAME..consignment_content;
DROP TABLE &&USER_NAME..consignment;
DROP TABLE &&USER_NAME..transport;
DROP TABLE &&USER_NAME..storage; 
DROP TABLE &&USER_NAME..box;

DROP TABLE &&USER_NAME..product;
*/