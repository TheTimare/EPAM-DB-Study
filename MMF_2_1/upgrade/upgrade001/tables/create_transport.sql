DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"
DEFINE TABLESPACE_INDEX_NAME = &&USER_NAME._INDEX

SET SERVEROUTPUT ON

CREATE TABLE transport ( 
  transport_id NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL ,
  name VARCHAR(500) NOT NULL,
  CONSTRAINT transport_pk 
    PRIMARY KEY (transport_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_transport ON transport(transport_id ASC)
	  TABLESPACE &&TABLESPACE_INDEX_NAME
  )
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN transport.transport_id IS 'Уникальный идентификатор транспорта';
COMMENT ON COLUMN transport.name IS 'Имя транспорта';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME
UNDEFINE TABLESPACE_INDEX_NAME