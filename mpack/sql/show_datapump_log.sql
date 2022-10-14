/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
set long 10000000
set serveroutput on size 1000000
var file_content CLOB
DECLARE
    logfile VARCHAR(4000) := '&1';
    filehandle UTL_FILE.FILE_TYPE;
    buf VARCHAR(4000);
    my_text CLOB;
BEGIN
  dbms_output.put_line('Showing logfile: '||logfile);
  --
    filehandle := UTL_FILE.FOPEN(:datapump_dir, logfile, 'r');
    LOOP
        UTL_FILE.GET_line(filehandle, buf);
        my_text := my_text || chr(10) || buf;
    END LOOP;
EXCEPTION
    WHEN no_data_found THEN
    UTL_FILE.FCLOSE(filehandle);
    :file_content := my_text;
END;
/

print file_content