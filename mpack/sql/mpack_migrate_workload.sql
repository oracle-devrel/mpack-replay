/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/*
    *** Migrate the workload ***
    run an export, and copy the dump to object storage
    connect to the target database and now import the data
*/
@log '"************************************"' ''
@log BEGIN migrate_workload
@connect_to_source
@set_config
@create_sqlset
@load_sqlset
@create_staging_table
@pack_sqlset
@export_sqlset
@copy_sqlset_export_to_object_store
--
@connect_to_target
@create_credential
@import_sqlset
@unpack_sqlset
@log END migrate_workload
