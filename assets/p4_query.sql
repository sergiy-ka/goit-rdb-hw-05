/*4. Розв’яжіть завдання 3, використовуючи оператор WITH для створення тимчасової таблиці temp. 
Якщо ваша версія MySQL більш рання, ніж 8.0, створіть цей запит за аналогією до того, як це зроблено в конспекті.*/

use `goit-rdb-hw-03`;

with temp as
(
	select order_id, quantity 
	from order_details 
	where quantity > 10
)

select order_id, avg(quantity) avg_quantity
from temp
group by order_id;