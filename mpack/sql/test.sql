WHENEVER SQLERROR EXIT WARNING
declare
	my_statement_count INTEGER := 0;
begin
    select statement_count into my_statement_count 
    from user_sqlset 
    where name = :sqlset_name;
--
    IF my_statement_count < 0
    THEN
        RAISE_APPLICATION_ERROR(-20001,'Abandoning workload migration - no queries found',FALSE);
    ELSE
        DBMS_OUTPUT.PUT_LINE('MPACK: Found '||my_statement_count||' queries');
    END IF;
end;
/