-- Найти и вывести на экран название, цвет и размер таких продуктов, у которых цена менее 100 и цвет Black
select
	p.Name,
	p.Color,
	P.Size

from Production.Product as p
where p.ListPrice < 100 and p.Color in ('Black')
