DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE batch ( 
  batch_id INT NOT NULL,
  customer_id INT NOT NULL,
  status VARCHAR(255) NOT NULL,
  batch_date DATE DEFAULT(sysdate),
  transport_id INT NOT NULL,
  CONSTRAINT cons_pk 
    PRIMARY KEY (batch_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_batch ON batch(batch_id ASC)
  ),
  CONSTRAINT cons_fk1
    FOREIGN KEY (transport_id)
    REFERENCES transport(transport_id)
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN batch.batch_id IS '���������� ������������� ������';
COMMENT ON COLUMN batch.customer_id IS '���������� ������������� ���������';
COMMENT ON COLUMN batch.status IS '������(���������, ������ � �.�.)';
COMMENT ON COLUMN batch.batch_date IS '���� ������';
COMMENT ON COLUMN batch.transport_id IS '���������� ������������� ����������';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME