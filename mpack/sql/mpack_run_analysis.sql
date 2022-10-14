/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/*
    run the analysis
*/
@log '"************************************"' ''
@log BEGIN run_analysis
@set_config
@create_analysis_task
@convert_sqlset
@execute_sqlset
@compare_executions
@generate_report
@log END run_analysis
