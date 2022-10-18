/***************************************
* Copyright (c) 2022 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* MPACK REPLAY
****************************************/

MPACK Replay is a tool created in SQLCL that demonstrates how easy is to migrate from on-premise/cloud, an workload to the Oracle Cloud Database (Autonomous). It analysis the performance workload on the target and gives tips/hints on what should be changed for the workload to increase its performance in the cloud.

The tool is flexibile, easy configurable and provides different scripts that can be grouped together to achive the desired performance on the Oracle Cloud (Autonomous).

The main steps are:

1. *** Migrate the data schema *** - run an export, and copy the dump to object storage connect to the target database and now import the data

1.1 Configure source connection
1.2 Export desired schemas from source to object store
1.3 Configure target connection on Oracle Cloud
1.4 Import from object store to target

2. *** Generate and Capture workload *** - generate workload on source, capture it, create sqlsets

2.1 Run the sh script to create sample workload on the database.
    The script is run_queries.sh and can be found on sh folder. The script executes the queries from sample_queries folder.
2.2 Create sqlsets and capture into staging table.

3. *** Migrate the workload *** - run an export, and copy the dump to object storage connect to the target database and now import the data for the workload

4. *** Run the workload and get performance report ***

Steps to execute:

1. All the sql scripts that can be grouped to perform these 4 main tasks above are in sql folder. Can be grouped and used as desired. For the steps above, first it needs to be changed the connection to source and target, in connect_to_source.sql and connect_to_target.sql.

2. Change desired parameters in set_user_config.sql, like encryption password for migration, or oci username and password, etc.

2. Run mpack_migrate_data.sql to move the schemas from source to target.

3. Generate workload on your source database by running the sh script.

4. Run mpack_migrate_workload.sql to migrate the workload on another shell window, while sh script is running to generate workload.

5. Run mpack_run_analysis.sql on target to compare the performance executions on source and target and get a comparison report.

6. Run mpack_run_advisory.sql - run the sql tuning advisor on the target to get some recommendations.
 



