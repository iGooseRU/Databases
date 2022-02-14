-- Найти и вывести на экран название и цвет таких продуктов, для которых определен и цвет, и размер
select
	p.Name,
	p.Color

from Production.Product as p

where p.Color is not null
		and p.Size is not null