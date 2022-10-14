/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN copy_schema_export_to_object_store
set serveroutput ON
spool tmp/copy_schema_export_to_object_store.tmp
set feedback off
begin
dbms_output.put_line(
    'cs put dbdir '||:datapump_dir||'/'||:schema_dmpfile||' /o/'||:schema_dmpfile);
end;
/
spool off
@tmp/copy_schema_export_to_object_store.tmp
@log END copy_schema_export_to_object_store