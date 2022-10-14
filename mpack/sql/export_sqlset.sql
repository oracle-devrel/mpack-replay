/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN export_sqlset
set lines 300
set serveroutput ON
set feedback off
spool tmp/export_sqlset.tmp
begin
dbms_output.put_line(
'dp export -compression ALL -encryption ALL  -reusefile TRUE -includelist TABLE -namelist TABLE='
  ||:staging_tab
  ||' -encryptionpassword '||:encryption_password
  ||' -dumpfile '||:sqlset_dmpfile
  ||' -logfile '||:sqlset_logfile
  );
end;
/
spool off
@tmp/export_sqlset.tmp
@log END export_sqlset