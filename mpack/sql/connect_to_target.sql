/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* connect to the target ADB
****************************************/

-- change the following line to point to the wallet zip file that you downloaded
set cloudconfig /<PATH_TO_WALLET_DIR>/<WALLET_FILENAME>
set SQLPROMPT "@|white SOURCE >|@"

-- change to the username and password of ADB - use the "<DBNAME>_high" connection for speed
-- example: connect ADMIN/<PASSWORD>@atpdbtest_high

connect <USER>/<PASSWORD>@<DATABASE>