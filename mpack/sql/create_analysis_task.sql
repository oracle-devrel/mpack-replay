/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/*********************************************************************************************************************
-- create a task to convert the sts to an execution result
****************************************/
@log BEGIN create_analysis_task
declare
	row_count INTEGER := 0;
    spa_job VARCHAR2(64);
begin
    BEGIN
        select 1 into row_count from user_advisor_tasks where task_name = :analysis_task;
        dbms_sqlpa.drop_analysis_task(:analysis_task);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;
    spa_job :=  DBMS_SQLPA.create_analysis_task(
        sqlset_name => :sqlset_name,
        task_name => :analysis_task,
        description => 'M-pack: Analysis Task created on '|| to_char(SYSDATE,'YYYY-MM-DD HH24:MI:SS')
    );
end;
/
@log END create_analysis_task