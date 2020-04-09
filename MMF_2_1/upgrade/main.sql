SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME_ = &&1

SET SERVEROUTPUT ON

PROMPT Username: &&USER_NAME_
PROMPT
PROMPT Calling tables creating
@upgrade001/create_tables.sql &&USER_NAME_ 
PROMPT
PROMPT Calling insert scripts
@upgrade001/inserts/insert_product.sql &&USER_NAME_
@upgrade001/inserts/insert_nutritional_value.sql &&USER_NAME_
@upgrade001/inserts/insert_composition.sql &&USER_NAME_
@upgrade001/inserts/insert_box.sql &&USER_NAME_
@upgrade001/inserts/insert_storage.sql &&USER_NAME_
@upgrade001/inserts/insert_transport.sql &&USER_NAME_
@upgrade001/inserts/insert_consignment.sql &&USER_NAME_
@upgrade001/inserts/insert_consignment_content.sql &&USER_NAME_
@upgrade001/inserts/insert_customer.sql &&USER_NAME_
PROMPT

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
SPOOL OFF
