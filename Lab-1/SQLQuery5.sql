-- Найти и вывести на экран название и размер первых трех самых дорогих товаров с цветом Black
select top 3
	p.Name,
	p.Size,
	p.ListPrice

from Production.Product as p
where p.Color in ('Black')
order by p.ListPrice desc
