DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = "&&USER_NAME._DATA"

SET SERVEROUTPUT ON

CREATE TABLE consignment ( 
  consignment_id INT NOT NULL,
  status VARCHAR(255) NOT NULL,
  order_date DATE DEFAULT(sysdate),
  transport_id INT NOT NULL,
  CONSTRAINT cons_pk 
    PRIMARY KEY (consignment_id)
  USING INDEX (
      CREATE UNIQUE INDEX pk_consignment ON consignment(consignment_id ASC)
  ),
  CONSTRAINT cons_fk
    FOREIGN KEY (transport_id)
    REFERENCES transport(transport_id)
)
TABLESPACE &&TABLESPACE_NAME;

COMMENT ON COLUMN consignment.consignment_id IS 'Уникальный идентификатор партия';
COMMENT ON COLUMN consignment.status IS 'Статус(готовится, готова и т.д.)';
COMMENT ON COLUMN consignment.order_date IS 'Дата заказа';
COMMENT ON COLUMN consignment.transport_id IS 'Уникальный идентификатор транспорта';

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME