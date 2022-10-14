/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_05 */
 cname, total_value FROM
(
    SELECT
        c.cust_first_name||' '||c.cust_last_name cname,
        sum(s.quantity_sold*p.prod_list_price) total_value
    FROM
        shx.customers c
    INNER JOIN shx.sales s using(cust_id)
    INNER JOIN shx.products p using (prod_id)
    where cust_id = 1234
    group by c.cust_first_name||' '||c.cust_last_name
    order by total_value desc
);

