/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
select distinct
        name, 
        owner,
        sql_id,
        parsing_schema_name,
        sql_text
FROM
(    select 
        name, 
        owner,
        sql_id,
        parsing_schema_name,
        to_char(substr(sql_text,1,30)) sql_text
    from
        MPACK$$_SQLSET_STGTAB);