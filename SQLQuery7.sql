-- Найти и вывести на экран не повторяющиеся цвета продуктов, 
-- у которых цена находится в диапазоне от 10 до 50 включительно.

select distinct p.Color

from Production.Product as p

where p.ListPrice between 10 and 50