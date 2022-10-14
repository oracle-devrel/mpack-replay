/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
-- pack STS into the staging table
****************************************/
@log BEGIN pack_sqlset
BEGIN
	DBMS_SQLSET.pack_stgtab (
	    sqlset_name => :sqlset_name,
	    staging_table_name => 'MPACK$$_SQLSET_STGTAB'
	);
END;
/
@log END pack_sqlset