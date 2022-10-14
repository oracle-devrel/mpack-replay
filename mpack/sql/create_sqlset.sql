/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
     create a SQLSet 
****************************************/
@log BEGIN create_sqlset
declare
	row_count INTEGER := 0;
begin
    BEGIN
        select 1 into row_count from user_sqlset where name = :sqlset_name;
        DBMS_SQLSET.DROP_SQLSET(sqlset_name   => :sqlset_name);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;
	DBMS_SQLSET.CREATE_SQLSET( 
	  sqlset_name => :sqlset_name,
	  description => 'M-pack: created on '|| to_char(SYSDATE,'YYYY-MM-DD HH24:MI:SS') );
end;
/
@log END create_sqlset