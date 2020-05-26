DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"
DEFINE TABLESPACE_INDEX_NAME = &&USER_NAME._INDEX

SET SERVEROUTPUT ON

CREATE TABLE composition ( 
  product_id NUMBER NOT NULL,
  component_name VARCHAR(500),
  weight NUMBER(10,5),
  CONSTRAINT compose_pk 
    PRIMARY KEY (product_id, component_name)
  USING INDEX (
      CREATE UNIQUE INDEX pk_compose ON composition(product_id ASC, component_name)
	  TABLESPACE &&TABLESPACE_INDEX_NAME
  ),
  CONSTRAINT compose_fk
    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
)
TABLESPACE &&TABLESPACE_NAME;

CREATE INDEX pk_compose_id ON composition(product_id ASC) TABLESPACE &&TABLESPACE_INDEX_NAME;
CREATE INDEX pk_compose_name ON composition(component_name ASC) TABLESPACE &&TABLESPACE_INDEX_NAME;

COMMENT ON COLUMN composition.product_id IS 'Уникальный идентификатор';
COMMENT ON COLUMN composition.component_name IS 'Название ингредиента';
COMMENT ON COLUMN composition.weight IS 'Вес ингредиента';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME
UNDEFINE TABLESPACE_INDEX_NAME