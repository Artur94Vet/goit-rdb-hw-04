USE hw_03;
SELECT 
	ct.name AS category
    ,COUNT(ct.name) AS count
	,AVG(od.quantity) AS avg_quantity
 FROM order_details as od
INNER JOIN orders as o on o.id=od.order_id
INNER JOIN products as p on p.id=od.product_id 
INNER JOIN suppliers as s on s.id=p.supplier_id 
INNER JOIN categories as ct on ct.id=p.category_id
INNER JOIN customers as c on c.id=o.customer_id
INNER JOIN employees as e on e.employee_id=o.employee_id
INNER JOIN shippers as sh on sh.id=o.shipper_id

WHERE e.employee_id>3 and e.employee_id<=10

GROUP BY
ct.name
HAVING avg_quantity>21
ORDER BY avg_quantity DESC
-- LIMIT 1,4
LIMIT 4
OFFSET 1
;


