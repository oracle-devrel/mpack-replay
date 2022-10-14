for i in {1..100}
do
        /Users/simon/bin/sqlcl/bin/sql /NOLOG @sql/run_sample_queries
        sleep 3
done
