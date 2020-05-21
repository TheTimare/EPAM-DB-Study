DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE batch_content ( 
  batch_id INT NOT NULL,
  box_id INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  CONSTRAINT cons_cont_pk 
    PRIMARY KEY (batch_id, box_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_cons_cont ON batch_content(batch_id ASC, box_id)
  ),
  CONSTRAINT cons_cont_fk
    FOREIGN KEY (box_id)
    REFERENCES box(box_id),
  CONSTRAINT cons_cont_fk2
    FOREIGN KEY (batch_id)
    REFERENCES batch(batch_id)
)
TABLESPACE &&TABLESPACE_NAME;

CREATE INDEX pk_cons_cont_id ON batch_content(batch_id ASC);
CREATE INDEX pk_cons_cont_box_id ON batch_content(box_id ASC);

COMMENT ON COLUMN batch_content.batch_id IS '”никальный идентификатор заказа';
COMMENT ON COLUMN batch_content.box_id IS '”никальный идентификатор коробки';
COMMENT ON COLUMN batch_content.price IS '÷ена коробки';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME