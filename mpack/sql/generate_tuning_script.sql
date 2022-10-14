/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN generate_tuning_script
SET LONG 10000000
SET LONGCHUNKSIZE 1000
SET LINESIZE 300
set pagesize 0
set head off

spool output/tuning_results.sql

SELECT
    DBMS_SQLTUNE.SCRIPT_TUNING_TASK(
        :tuning_task,
        'ALL')
from DUAL;

spool off
@log END generate_tuning_script