/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/

set head ON
set pages 100
SELECT /* MPACK_QUERY */
    task_name,
    status,
    advisor_name,
    created,
    last_execution,
    status,
    status_message,
    error_message,
    description
FROM user_advisor_tasks
order by last_execution desc;

