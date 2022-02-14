/* Найти и вывести на экран имена всех клиентов из таблицы Person, 
у которых обращение (Title) указано как «Mr.» */

select 
	p.FirstName, 
	p.MiddleName,
	p.LastName

from Person.Person as p
where p.Title = 'Mr.'