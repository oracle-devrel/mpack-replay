/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* compare the two executions
****************************************/
@log BEGIN compare_executions
begin
  DBMS_SQLPA.execute_analysis_task(
    task_name        => :analysis_task,
    execution_type   => 'compare performance', 
    execution_params => dbms_advisor.arglist(
            'execution_name1', 'BASELINE EXECUTION', 
            'execution_name2', 'TEST EXECUTION',
            'workload_impact_threshold', 0, 
            'sql_impact_threshold', 0
        )
    );
END;
/
@log END compare_executions