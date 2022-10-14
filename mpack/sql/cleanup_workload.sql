/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/

@connect_to_source
@set_config

@drop_sqlset
@drop_staging_table

@connect_to_target
@drop_tuning_task
@drop_analysis_task
@drop_sqlset
@drop_staging_table
