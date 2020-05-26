SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME_ = &&1
connect &&USER_NAME_/oracle

SET SERVEROUTPUT ON

PROMPT Username: &&USER_NAME_
PROMPT
PROMPT Delete old data in tables
@data_delete.sql
PROMPT
PROMPT Create raw data table
@create_raw_table.sql
PROMPT
PROMPT Insert new data in tables from raw data
@data_insert.sql
PROMPT
PROMPT Create data view of tables
@data_view.sql
PROMPT
PROMPT Count data in tables
@data_count.sql
PROMPT

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME_
SPOOL OFF
