/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
select
    sql_id,
    parsing_schema_name,
    sql_text
from
    v$sqlarea
where
    parsing_schema_name = :parsing_schema;