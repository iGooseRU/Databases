/* ����� � ������� �� ����� ����� ���� �������� �� ������� Person,
��� ������� �� ���������� ��������� (Title) */
 select 
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Title

from Person.Person as p
where p.Title is null