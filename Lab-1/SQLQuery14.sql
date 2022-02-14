/* Ќайти и вывести на экран имена всех клиентов из таблицы Person,
дл€ которых не определено обращение (Title) */
 select 
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Title

from Person.Person as p
where p.Title is null