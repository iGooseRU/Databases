-- Вывести на экран названия продуктов, у которых дата начала продаж – не позднее 2012 года.
select p.Name, p.SellStartDate

from Production.Product as p
where p.SellStartDate <= '2011-31-12'
