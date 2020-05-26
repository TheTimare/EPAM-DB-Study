SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME_ = &&1
connect &&USER_NAME_/oracle

SET SERVEROUTPUT ON

/*You should be connected as user to run script*/
/*main.sql script above have connecting script, start it instead of this*/
PROMPT Username: &&USER_NAME_
PROMPT
PROMPT Calling tables creating
@tables/create_product.sql &&USER_NAME_ 
@tables/create_nutritional_value.sql &&USER_NAME_ 
@tables/create_composition.sql &&USER_NAME_ 
@tables/create_box.sql &&USER_NAME_ 
@tables/create_storage.sql &&USER_NAME_ 
@tables/create_transport.sql &&USER_NAME_ 
@tables/create_customer.sql &&USER_NAME_ 
@tables/create_batch.sql &&USER_NAME_ 
@tables/create_batch_content.sql &&USER_NAME_ 
PROMPT
PROMPT Calling insert scripts
@inserts/insert_product.sql
@inserts/insert_nutritional_value.sql
@inserts/insert_composition.sql
@inserts/insert_box.sql
@inserts/insert_storage.sql
@inserts/insert_transport.sql
@inserts/insert_customer.sql
@inserts/insert_batch.sql
@inserts/insert_batch_content.sql
PROMPT

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME_
SPOOL OFF
