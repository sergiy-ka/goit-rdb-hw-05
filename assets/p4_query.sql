/*4. Виконайте запити, перелічені нижче.*/

-- Завдання(4.1): Визначте, скільки рядків ви отримали (за допомогою оператора COUNT).
-- Відповідь: count = 518
select count(*)
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id;

-- Завдання(4.2): Змініть декілька операторів INNER на LEFT чи RIGHT. Визначте, що відбувається з кількістю рядків. Чому? Напишіть відповідь у текстовому файлі.
-- Відповідь: count = 535. При зміні INNER на LEFT кількість рядків збільшилась оскількі є користувачі, яку не зробили жодного замовлення. 
select count(*)
from `goit-rdb-hw-03`.customers c
left join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
left join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
left join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
left join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
left join `goit-rdb-hw-03`.products p on od.product_id = p.id
left join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
left join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
order by c.id; 

-- Завдання(4.3): Оберіть тільки ті рядки, де employee_id > 3 та ≤ 10.
-- Відповідь: 
select *
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
where e.employee_id > 3 and e.employee_id <= 10;

-- Завдання(4.4): Згрупуйте за іменем категорії, порахуйте кількість рядків у групі, середню кількість товару (кількість товару знаходиться в order_details.quantity)
-- Відповідь: 
select c2.name, count(c2.id) rows_count, avg(od.quantity) as avg_quantity
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
where e.employee_id > 3 and e.employee_id <= 10
group by c2.name;

-- Завдання(4.5): Відфільтруйте рядки, де середня кількість товару більша за 21.
-- Відповідь: 
select c2.name, count(c2.id) rows_count, avg(od.quantity) as avg_quantity
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
where e.employee_id > 3 and e.employee_id <= 10
group by c2.name
having avg_quantity > 21;

-- Завдання(4.6): Відсортуйте рядки за спаданням кількості рядків.
-- Відповідь: 
select c2.name, count(c2.id) rows_count, avg(od.quantity) as avg_quantity
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
where e.employee_id > 3 and e.employee_id <= 10
group by c2.name
having avg_quantity > 21
order by rows_count desc;

-- Завдання(4.7): Виведіть на екран (оберіть) чотири рядки з пропущеним першим рядком.
-- Відповідь: 
select c2.name, count(c2.id) rows_count, avg(od.quantity) as avg_quantity
from `goit-rdb-hw-03`.customers c
join `goit-rdb-hw-03`.orders o on c.id = o.customer_id
join `goit-rdb-hw-03`.employees e on o.employee_id = e.employee_id
join `goit-rdb-hw-03`.shippers s on o.shipper_id = s.id
join `goit-rdb-hw-03`.order_details od on o.id = od.order_id
join `goit-rdb-hw-03`.products p on od.product_id = p.id
join `goit-rdb-hw-03`.suppliers s2 on p.supplier_id = s2.id
join `goit-rdb-hw-03`.categories c2 on p.category_id = c2.id
where e.employee_id > 3 and e.employee_id <= 10
group by c2.name
having avg_quantity > 21
order by rows_count desc
limit 4 offset 1;