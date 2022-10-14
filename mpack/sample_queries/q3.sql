/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_03 */
country_name, total_value FROM
(
    SELECT
        cy.country_name country_name,
        sum(s.quantity_sold*p.prod_list_price) total_value
    FROM
        shx.countries cy
    INNER JOIN shx.customers using(country_id)
    INNER JOIN shx.sales s using(cust_id)
    INNER JOIN shx.products p using (prod_id)
    group by cy.country_name
    order by total_value desc
);