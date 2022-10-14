/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
select  'schemas' "Param",      :data_schemas "Value"       from dual union all
select  'parsing_schema',       :parsing_schema             from dual union all
select  'remap_tablespaces',    :remap_tablespaces          from dual union all
select  'remap_schemas',        :remap_schemas              from dual union all
select  'sqlset_name' "param",  :sqlset_name                from dual union all
select  'credential_name',      :credential_name            from dual union all
select  'datapump_dir',         :datapump_dir               from dual union all
select  'jobnum',               :jobnum                     from dual union all
select  'schema_dmpfile',       :schema_dmpfile             from dual union all
select  'schema_logfile',       :schema_logfile             from dual union all
select  'sqlset_dmpfile',       :sqlset_dmpfile             from dual union all
select  'sqlset_logfile',       :sqlset_logfile             from dual union all
select  'staging_tab',          :staging_tab                from dual union all
select  'capture_duration',     to_char(:capture_duration)  from dual union all
select  'capture_interval',     to_char(:capture_interval)  from dual union all
select  'tuning_task',          to_char(:tuning_task)       from dual union all
select  'analysis_task',        to_char(:analysis_task)     from dual union all
-- select  'encryption_password',  :encryption_password        from dual union all
-- select  'oci_password',         to_char(:oci_password)      from dual
select  'oci_username',         to_char(:oci_username)      from dual
;
