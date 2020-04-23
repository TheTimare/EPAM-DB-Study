DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = &&USER_NAME._DATA

SET SERVEROUTPUT ON

CREATE TABLE &&USER_NAME..product ( 
  product_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  weight NUMBER(6,3),
  energy_value NUMBER(6,3),
  shelf_life INT,
  CONSTRAINT pk_product PRIMARY KEY (product_id)
  USING INDEX (
      CREATE UNIQUE INDEX product_pk ON product (product_id ASC) 
  )
  ENABLE 
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN product.product_id IS '���������� �������������';
COMMENT ON COLUMN product.name IS '���';
COMMENT ON COLUMN product.weight IS '��� ��������';
COMMENT ON COLUMN product.energy_value IS '�������������� ��������(����/100�)';
COMMENT ON COLUMN product.shelf_life IS '���� ��������(� ����)';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME