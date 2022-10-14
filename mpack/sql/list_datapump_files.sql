/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
select object_name, bytes, created, LAST_MODIFIED
from (
    SELECT * FROM DBMS_CLOUD.LIST_FILES('DATA_PUMP_DIR')
)
where object_name like 'MPACK%'
/
