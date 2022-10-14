/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN import_sqlset
set serveroutput ON
spool tmp/import_sqlset.tmp
set lines 256
set feedback off
begin
dbms_output.put_line(
    'dp import -storage FALSE -tableexists REPLACE '
        ||:remap_schemas||' '
        ||:remap_tablespaces||' '
        ||' -encryptionpassword '|| :encryption_password
        ||' -dumpuri /o/'||:sqlset_dmpfile
        ||' -logfile '||:sqlset_logfile
);
end;
/
spool off
@tmp/import_sqlset.tmp
@log END import_sqlset
