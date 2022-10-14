/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
    Run the report
****************************************/
@log BEGIN generate_report
set long 1000000000 longchunksize 1000000000 linesize 2000 head off feedback off echo off term off
spool output/baseline_comparison_active.html
SELECT 
    DBMS_SQLPA.REPORT_ANALYSIS_TASK(:analysis_task,
                                    type=>'ACTIVE',
                                    section => 'ALL')
from dual;
spool off
set term on
prompt Report saved to output/baseline_comparison_active.html
@log END generate_report

