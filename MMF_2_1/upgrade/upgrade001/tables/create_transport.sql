DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE &&USER_NAME..transport ( 
  transport_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  CONSTRAINT transport_pk 
    PRIMARY KEY (transport_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_transport ON transport(transport_id ASC)
  )
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN transport.transport_id IS 'Уникальный идентификатор транспорта';
COMMENT ON COLUMN transport.name IS 'Имя транспорта';
COMMENT ON COLUMN transport.type IS 'Тип транспорта(Наземный, воздушный и т.д.)';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME