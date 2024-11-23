/*3. Перейдіть до бази даних, з якою працювали у темі 3. 
Напишіть запит за допомогою операторів FROM та INNER JOIN, що об’єднує всі таблиці даних, які ми завантажили з файлів: 
order_details, orders, customers, products, categories, employees, shippers, suppliers.*/

select *
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id 
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id 
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id 
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id 
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id 
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id;