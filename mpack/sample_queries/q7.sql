/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
col value_string format a60
SELECT /* MPACK_QUERY_07 */
    sales_date,
    sales_value,
    rpad('*',trunc(sales_value/1000),'*') value_string
FROM (
    select
        month_name sales_date,
        count(*) sales_value
    FROM (
        SELECT
            t.day_number_in_month day_name,
            t.calendar_month_desc month_name,
            t.calendar_year cal_year,
            s.quantity_sold*p.prod_list_price total_value
        FROM
            shx.sales s
            INNER JOIN shx.products p using (prod_id)
            INNER JOIN shx.times t using (time_id)
        )
    GROUP BY
        month_name
    )
ORDER BY
    sales_date
;

