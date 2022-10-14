/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_06 */
    product_name,
    month_name,
    count(*) sales_volume
FROM (
    SELECT
        c.cust_first_name||' '||c.cust_last_name customer_name,
        p.prod_name product_name,
        t.day_number_in_month day_name,
        t.calendar_month_desc month_name,
        t.calendar_year cal_year,
        s.quantity_sold*p.prod_list_price total_value
    FROM
        shx.customers c
    INNER JOIN shx.sales s using(cust_id)
    INNER JOIN shx.products p using (prod_id)
    INNER JOIN shx.times t using (time_id)
    where s.quantity_sold*p.prod_list_price > 1000
    )
GROUP BY
    product_name,
    month_name
ORDER BY
    product_name,
    month_name
;

