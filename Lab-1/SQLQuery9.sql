/* Ќайти и вывести на экран названи€ таких продуктов, 
которых начинаютс€ либо на букву СDТ, либо на букву СMТ, 
и при этом длина имени Ц более трех символов */
select p.Name

from Production.Product as p
where p.Name like '[DM]%'
		and len(p.Name) > 3