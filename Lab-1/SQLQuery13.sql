/* ����� � ������� �� ����� ����� ���� �������� �� ������� Person, 
� ������� ��������� (Title) ������� ��� �Mr.� */

select 
	p.FirstName, 
	p.MiddleName,
	p.LastName

from Person.Person as p
where p.Title = 'Mr.'