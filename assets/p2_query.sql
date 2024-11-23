/*2. Напишіть SQL запит, який буде відображати таблицю order_details. 
Відфільтруйте результати так, щоб відповідний запис із таблиці orders виконував умову shipper_id=3.
Це має бути зроблено за допомогою вкладеного запиту в операторі WHERE.*/

use `goit-rdb-hw-03`;

select od.*
from order_details od
where od.order_id in (select o.id from orders o, shippers s
				      where o.shipper_id = s.id and s.id = 3)
;