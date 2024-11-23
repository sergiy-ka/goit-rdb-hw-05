/*1. Напишіть SQL запит, який буде відображати таблицю order_details та поле customer_id 
з таблиці orders відповідно для кожного поля запису з таблиці order_details.
Це має бути зроблено за допомогою вкладеного запиту в операторі SELECT.*/

use `goit-rdb-hw-03`;

select 
	od.*,
	(select o.customer_id from orders o where o.id = od.order_id) customer_id
from order_details od;