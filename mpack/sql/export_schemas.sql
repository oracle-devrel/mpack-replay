/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN export_schemas
set lines 300
set serveroutput ON
set feedback off
spool tmp/exp_schemas.tmp
begin
dbms_output.put_line(
'dp export -compression ALL -encryption ALL  -reusefile TRUE -parallel 4 -schemas '
  ||:data_schemas||' '
  ||' -encryptionpassword '|| :encryption_password 
  ||' -dumpfile '||:schema_dmpfile
  ||' -logfile '||:schema_logfile
  );
end;
/
spool off
@tmp/exp_schemas.tmp
@log END export_schemas
