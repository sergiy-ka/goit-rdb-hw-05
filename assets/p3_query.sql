/*3. Напишіть SQL запит, вкладений в операторі FROM, 
який буде обирати рядки з умовою quantity>10 з таблиці order_details. 
Для отриманих даних знайдіть середнє значення поля quantity — групувати слід за order_id.*/

use `goit-rdb-hw-03`;

select t.order_id, avg(t.quantity) avg_quantity
from (select order_id, quantity from order_details where quantity > 10) t
group by t.order_id;