/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_09 */
    country_name,
    gender,
    total_value
FROM
(
    SELECT
        cy.country_name country_name,
        c.cust_gender gender,
        sum(s.quantity_sold*p.prod_list_price) total_value
    FROM
        shx.countries cy
    INNER JOIN shx.customers c using(country_id)
    INNER JOIN shx.sales s using(cust_id)
    INNER JOIN shx.products p using (prod_id)
    group by
        cy.country_name,
        c.cust_gender
)
    order by 1,2 desc
;
