/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
SELECT
    executions,
    cpu_time/1000,
    elapsed_time/1000,
    sql_id,
    parsing_schema_name,
    substr(sql_text,1,132)||' ...' sql_text
FROM
    user_sqlset_statements 
WHERE
    sqlset_name= :sqlset_name
ORDER BY 3 desc
/
