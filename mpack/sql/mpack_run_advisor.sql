/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/*
    run the sql tuning advisor on the target to get some recommendations
*/
@log '"************************************"' ''
@log BEGIN run_advisor
@connect_to_target
@set_config
@create_tuning_task
@run_tuning_task
@generate_tuning_script
@log END run_advisor