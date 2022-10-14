/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_04 */
customer_name, total_value FROM
(
    SELECT
        c.cust_first_name||' '||c.cust_last_name customer_name,
        sum(s.quantity_sold*p.prod_list_price) total_value
    FROM
        shx.countries cy
    INNER JOIN shx.customers c using(country_id)
    INNER JOIN shx.sales s using(cust_id)
    INNER JOIN shx.products p using (prod_id)
    WHERE cy.country_name = 'Germany'
    GROUP BY
        c.cust_first_name||' '||c.cust_last_name
    HAVING sum(s.quantity_sold*p.prod_list_price) > 50000
    ORDER BY sum(s.quantity_sold*p.prod_list_price) DESC
);

