/***************************************
* Copyright (c) 2021 Oracle and/or its affiliates.
* Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
****************************************
* Sample query for mpack
****************************************/
SELECT /* MPACK_QUERY_01 */
    p.prod_name pname,
    sum(s.quantity_sold) qty,
    sum(s.amount_sold) amt
from 
    shx.products p
inner join sh.sales s
    on s.prod_id = p.prod_id
group by p.prod_name
order by 1;
