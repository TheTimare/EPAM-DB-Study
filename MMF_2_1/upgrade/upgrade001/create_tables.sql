DEFINE USER_NAME = c##timofey

SET SERVEROUTPUT ON

/*энергетическа€ ценость измер€етс€ в ккал на 100г
срок хранени€ - в дн€х*/
CREATE TABLE &&USER_NAME..product ( 
  product_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  weight NUMBER(6,3),
  energy_value NUMBER(6,3),
  shelf_life INT,
  CONSTRAINT product_pk PRIMARY KEY (product_id)
);

/*жиры, белки, углеводы измер€ютс€ в граммах*/
CREATE TABLE &&USER_NAME..nutritional_value ( 
  product_id INT NOT NULL,
  fats NUMBER(6,3),
  proteins NUMBER(6,3),
  carbohydrates NUMBER(6,3),
  CONSTRAINT nv_pk 
    PRIMARY KEY (product_id),
  CONSTRAINT nv_fk
    FOREIGN KEY (product_id)
    REFERENCES &&USER_NAME..product(product_id)
);

/*вес в граммах*/
CREATE TABLE &&USER_NAME..composition ( 
  product_id INT NOT NULL,
  component_name VARCHAR(255),
  weight NUMBER(6,3),
  CONSTRAINT compose_pk 
    PRIMARY KEY (product_id, component_name),
  CONSTRAINT compose_fk
    FOREIGN KEY (product_id)
    REFERENCES &&USER_NAME..product(product_id)
);

/*box может быть дл€ транспортировки или дл€ продажи*/
CREATE TABLE &&USER_NAME..box ( 
  box_id INT NOT NULL,
  type VARCHAR(255) NOT NULL,
  product_id INT NOT NULL,
  amount INT NOT NULL,
  CONSTRAINT box_pk 
    PRIMARY KEY (box_id),
  CONSTRAINT box_fk
    FOREIGN KEY (product_id)
    REFERENCES &&USER_NAME..product(product_id)
);

CREATE TABLE &&USER_NAME..storage ( 
  storage_id INT NOT NULL,
  box_id INT NOT NULL UNIQUE,
  cell_id INT NOT NULL,
  amount INT NOT NULL,
  CONSTRAINT storage_pk 
    PRIMARY KEY (storage_id, cell_id),
  CONSTRAINT storage_fk
    FOREIGN KEY (box_id)
    REFERENCES &&USER_NAME..box(box_id)
);

CREATE TABLE &&USER_NAME..transport ( 
  transport_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  CONSTRAINT transport_pk 
    PRIMARY KEY (transport_id)
);

CREATE TABLE &&USER_NAME..consignment ( 
  consignment_id INT NOT NULL,
  status VARCHAR(255) NOT NULL,
  order_date DATE DEFAULT(sysdate),
  transport_id INT NOT NULL,
  CONSTRAINT cons_pk 
    PRIMARY KEY (consignment_id),
  CONSTRAINT cons_fk
    FOREIGN KEY (transport_id)
    REFERENCES &&USER_NAME..transport(transport_id)
);

CREATE TABLE &&USER_NAME..consignment_content ( 
  consignment_id INT NOT NULL,
  box_id INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  CONSTRAINT cons_cont_pk 
    PRIMARY KEY (consignment_id, box_id),
  CONSTRAINT cons_cont_fk
    FOREIGN KEY (box_id)
    REFERENCES &&USER_NAME..box(box_id),
  CONSTRAINT cons_cont_fk2
    FOREIGN KEY (consignment_id)
    REFERENCES &&USER_NAME..consignment(consignment_id)
);

CREATE TABLE &&USER_NAME..customer ( 
  customer_id INT NOT NULL,
  consignment_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  CONSTRAINT customer_pk 
    PRIMARY KEY (customer_id),
  CONSTRAINT customer_fk
    FOREIGN KEY (consignment_id)
    REFERENCES &&USER_NAME..consignment(consignment_id)
);

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

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
