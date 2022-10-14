/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* execute the task to convert the sts to an execution result
****************************************/
@log BEGIN convert_sqlset
BEGIN
    DBMS_SQLPA.EXECUTE_ANALYSIS_TASK(
        task_name => :analysis_task,
        execution_type => 'CONVERT SQLSET' ,
        execution_name => 'BASELINE EXECUTION');
end;
/
@log END convert_sqlset