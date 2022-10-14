/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
    Create Credential
****************************************/
set serveroutput on
@log BEGIN create_credential
declare
	row_count INTEGER := 0;
begin
    BEGIN
        select 1 into row_count from user_credentials where credential_name = :credential_name;
        dbms_output.put_line('Credential '||:credential_name||' already exists.');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        DBMS_CLOUD.CREATE_CREDENTIAL(
          credential_name => :credential_name,
          username => :oci_username,
          password => :oci_password
        );
        dbms_output.put_line('Credential '||:credential_name||' created.');
    END;
END;
/
@log END create_credential