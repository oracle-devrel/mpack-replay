/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
-- test execute the sql in an STS
****************************************/
@log BEGIN execute_sqlset
begin
    DBMS_SQLPA.execute_analysis_task(
        task_name       => :analysis_task,
        execution_type  => 'TEST EXECUTE',
        execution_name  => 'TEST EXECUTION');
END;
/
@log END execute_sqlset
