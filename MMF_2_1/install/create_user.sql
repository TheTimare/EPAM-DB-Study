DEFINE USER_NAME = &&1
DEFINE TBS_DATA_NAME = &&USER_NAME._DATA;
DEFINE TBS_INDEX_NAME = &&USER_NAME._INDEX;

SET SERVEROUTPUT ON

CREATE USER &USER_NAME IDENTIFIED BY oracle
       DEFAULT TABLESPACE &TBS_DATA_NAME
       TEMPORARY TABLESPACE temp
       QUOTA UNLIMITED ON &TBS_DATA_NAME
	   QUOTA UNLIMITED ON &TBS_INDEX_NAME;

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
