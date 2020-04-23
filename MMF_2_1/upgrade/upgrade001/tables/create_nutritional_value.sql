DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE &&USER_NAME..nutritional_value ( 
  product_id INT NOT NULL,
  fats NUMBER(6,3),
  proteins NUMBER(6,3),
  carbohydrates NUMBER(6,3),
  CONSTRAINT nv_pk 
    PRIMARY KEY (product_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_nv ON nutritional_value(product_id ASC) 
  )
  ENABLE,
  CONSTRAINT nv_fk
    FOREIGN KEY (product_id)
    REFERENCES &&USER_NAME..product(product_id) 
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN nutritional_value.product_id IS 'Уникальный идентификатор';
COMMENT ON COLUMN nutritional_value.fats IS 'Жиры';
COMMENT ON COLUMN nutritional_value.proteins IS 'Белки';
COMMENT ON COLUMN nutritional_value.carbohydrates IS 'Углеводы)';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME