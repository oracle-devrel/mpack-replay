/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_08 */
    cust_id,
    c.cust_first_name||' '||c.cust_last_name cname,
    sum(s.quantity_sold*p.prod_list_price) total_value
FROM
    shx.customers c
INNER JOIN shx.sales s using(cust_id)
INNER JOIN shx.products p using (prod_id)
WHERE CUST_ID IN (10002,10003,10006,10046,10105,10381)
GROUP BY
    cust_id,
    c.cust_first_name||' '||c.cust_last_name
order by 1;
