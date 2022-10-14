/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
/***************************************
    Load a SQLSet from the cache
****************************************/
@log BEGIN load_sqlset
set serveroutput on
DECLARE
      -- my_filter VARCHAR2(2048) := 'UPPER(SQL_TEXT) like ''%MPACK%''';
      my_filter VARCHAR2(2048) := 'PARSING_SCHEMA_NAME = ''SHX''';
BEGIN
    DBMS_OUTPUT.PUT_LINE('MPACK: Filter is :'||my_filter);
	DBMS_SQLSET.CAPTURE_CURSOR_CACHE(
	 sqlset_name     => :sqlset_name,
     basic_filter    => my_filter,
	 time_limit      => :capture_duration,
	 repeat_interval => :capture_interval,
	 capture_mode    => DBMS_SQLSET.MODE_ACCUMULATE_STATS);

END;
/
/***************************************
    If we didn't find any queries, then we exit
****************************************/
WHENEVER SQLERROR EXIT WARNING
declare
	my_statement_count INTEGER := 0;
begin
    select statement_count into my_statement_count 
    from user_sqlset 
    where name = :sqlset_name;
--
    IF my_statement_count < 1
    THEN
        RAISE_APPLICATION_ERROR(-20001,'Abandoning workload migration - no queries found',FALSE);
    ELSE
        DBMS_OUTPUT.PUT_LINE('MPACK: Found '||my_statement_count||' queries');
    END IF;
end;
/
WHENEVER SQLERROR CONTINUE
@log END load_sqlset
