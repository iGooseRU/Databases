-- Ќайти и вывести на экран название, цвет и размер таких продуктов, 
-- у которых цена менее 100 и цвет Black, упор€дочив вывод по возрастанию 
-- стоимости продуктов.
select
	p.Name,
	p.Color,
	p.Size

from Production.Product as p
where p.ListPrice < 100 and p.Color in ('Black')
order by p.ListPrice asc