DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE box ( 
  box_id INT NOT NULL,
  weight NUMBER(10,5) NOT NULL,
  type VARCHAR(255) NOT NULL,
  price NUMBER(10,5),
  amount INT NOT NULL,
  product_id INT NOT NULL,
  CONSTRAINT box_pk 
    PRIMARY KEY (box_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_box ON box(box_id ASC)
  ),
  CONSTRAINT box_fk
    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
)
TABLESPACE &&TABLESPACE_NAME;

CREATE INDEX fk_product_id ON box(product_id ASC);

COMMENT ON COLUMN box.box_id IS '���������� ������������� �������';
COMMENT ON COLUMN box.weight IS '��� ���� �������';
COMMENT ON COLUMN box.type IS '��� - ��� ������� ��� ��� ���������������';
COMMENT ON COLUMN box.price IS '���� �������';
COMMENT ON COLUMN box.product_id IS '���������� ������������� ��������';
COMMENT ON COLUMN box.amount IS '���������� �������� � �������';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME