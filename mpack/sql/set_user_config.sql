/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
oci profile DEFAULT
cs https://objectstorage.us-ashburn-1.oraclecloud.com/n/oradbclouducm/b/data_pump_bucket
cs DBMS_CLOUD MPACK_CREDENTIAL

var encryption_password VARCHAR2
var data_schemas VARCHAR2
var parsing_schema VARCHAR2
var remap_tablespaces VARCHAR2
var remap_schemas VARCHAR2
var oci_username VARCHAR2
var oci_password VARCHAR2

BEGIN
-- These must be set by the user
    :encryption_password := '42redapples';
    :data_schemas := 'SHX'; -- comma seperated list of schemas
    :parsing_schema := 'SHX';
    :remap_schemas := '-remapschemas SH=SHX';
    :remap_tablespaces := '-remaptablespaces USERS=DATA';
    :oci_username := 'oracleidentitycloudservice/simon.griffiths@oracle.com';
    :oci_password := '}h<Br#O<sP))d0.<fasH';
END;
/
