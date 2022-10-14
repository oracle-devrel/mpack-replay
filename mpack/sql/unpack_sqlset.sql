/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
-- unpack STS from the staging table
****************************************/
@log BEGIN unpack_sqlset
BEGIN
  DBMS_SQLTUNE.unpack_stgtab_sqlset (
    sqlset_name => :sqlset_name,
    replace => TRUE,
    staging_table_name => 'MPACK$$_SQLSET_STGTAB');
END;
/
@log END unpack_sqlset