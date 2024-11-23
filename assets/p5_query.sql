/*5. Створіть функцію з двома параметрами, яка буде ділити перший параметр на другий. 
Обидва параметри та значення, що повертається, повинні мати тип FLOAT.
Використайте конструкцію DROP FUNCTION IF EXISTS. 
Застосуйте функцію до атрибута quantity таблиці order_details. 
Другим параметром може бути довільне число на ваш розсуд.*/

use `goit-rdb-hw-03`;

drop function if exists DivideNumbers;

delimiter //

create function DivideNumbers (number1 float, number2 float)
returns float
deterministic
no sql
begin
	return number1 / number2;
end //

delimiter ;

select od.*, DivideNumbers(od.quantity, 2) divided_quantity
from order_details od;