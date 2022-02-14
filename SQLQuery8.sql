-- Ќайти и вывести на экран все цвета таких продуктов, у которых в имени перва€ буква СLТ и треть€ СNТ
select distinct p.Color

from Production.Product as p
where p.Name like 'L_N%'