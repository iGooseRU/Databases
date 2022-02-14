-- Найти и вывести на экран названия, цвет и размер таких продуктов, у которых цена более 100.
select 
	p.Name,
	p.Color,
	p.Size

from Production.Product as p
where p.ListPrice > 100
