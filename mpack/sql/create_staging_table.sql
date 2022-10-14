/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN create_staging_table
declare
	row_count INTEGER := 0;
begin
    BEGIN
        select 1 into row_count from user_tables where table_name = :staging_tab;
        execute immediate 'drop table '||:staging_tab;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;
	DBMS_SQLSET.CREATE_STGTAB(:staging_tab);
end;
/
@log END create_staging_table