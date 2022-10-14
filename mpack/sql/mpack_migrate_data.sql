/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/*
    *** Migrate the data schema ***
    run an export, and copy the dump to object storage
    connect to the target database and now import the data
*/
@log '"************************************"' ''
@log BEGIN migrate_data
@connect_to_source
@set_config
@export_schemas
@copy_schema_export_to_object_store
@connect_to_target
@create_credential
@import_schemas
@log END migrate_data
