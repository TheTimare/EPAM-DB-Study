DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE storage ( 
  storage_id INT NOT NULL,
  box_id INT NOT NULL UNIQUE,
  cell_id INT NOT NULL,
  CONSTRAINT storage_pk 
    PRIMARY KEY (storage_id, cell_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_storage ON storage(storage_id ASC, cell_id ASC)
  ),
  CONSTRAINT storage_fk
    FOREIGN KEY (box_id)
    REFERENCES box(box_id)
)
TABLESPACE &&TABLESPACE_NAME;

CREATE UNIQUE INDEX pk_storage_id ON storage(storage_id ASC);
CREATE UNIQUE INDEX pk_storage_cell_id ON storage(cell_id ASC);

COMMENT ON COLUMN storage.storage_id IS '”никальный идентификатор склад';
COMMENT ON COLUMN storage.box_id IS '”никальный идентификатор коробки';
COMMENT ON COLUMN storage.cell_id IS '”никальный идентификатор €чейки склада';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME