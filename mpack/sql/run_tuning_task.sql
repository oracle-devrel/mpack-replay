/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
@log BEGIN run_tuning_task
BEGIN
    DBMS_SQLTUNE.execute_tuning_task(
        task_name => :tuning_task
        );
END;
/
@log END run_tuning_task