DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE customer ( 
  customer_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  CONSTRAINT customer_pk 
    PRIMARY KEY (customer_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_customer ON customer(customer_id ASC)
  ),
  CONSTRAINT customer_fk1
    FOREIGN KEY (customer_id)
    REFERENCES batch(batch_id)
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN customer.customer_id IS 'Уникальный идентификатор заказчика';
COMMENT ON COLUMN customer.name IS 'Имя заказчика';
COMMENT ON COLUMN customer.address IS 'Адресс заказчика';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

/*
DROP TABLE composition;
DROP TABLE nutritional_value;

DROP TABLE customer;
DROP TABLE batch_content;
DROP TABLE batch;
DROP TABLE transport;
DROP TABLE storage; 
DROP TABLE box;

DROP TABLE product;
*/