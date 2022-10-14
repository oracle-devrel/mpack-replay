/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/

set serveroutput ON
spool tmp/drop_schemas.tmp
set feedback off
DECLARE
    my_count BINARY_INTEGER;
    my_tab dbms_utility.uncl_array;
BEGIN
    dbms_utility.comma_to_table(
        list => :data_schemas,
        tablen => my_count,
        tab => my_tab
    );
    FOR i IN 1 .. my_count
    LOOP
            dbms_output.put_line('DROP USER '||my_tab(i)||' CASCADE;');
    END LOOP;
END;
/
spool OFF
