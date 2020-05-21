DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE box ( 
  box_id INT NOT NULL,
  type VARCHAR(255) NOT NULL,
  product_id INT NOT NULL,
  amount INT NOT NULL,
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

COMMENT ON COLUMN box.box_id IS 'Уникальный идентификатор коробки';
COMMENT ON COLUMN box.type IS 'Тип - для продажи или для транспортировки';
COMMENT ON COLUMN box.product_id IS 'Уникальный идентификатор продукта';
COMMENT ON COLUMN box.amount IS 'Количество продукта в коробке';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME