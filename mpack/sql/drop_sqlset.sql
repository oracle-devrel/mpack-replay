/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* 
****************************************/
-- Delete all statements in a sql tuning set.
BEGIN
    DBMS_SQLSET.DROP_SQLSET(sqlset_name   => :sqlset_name);
END;
/
 
