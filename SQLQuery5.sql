-- ����� � ������� �� ����� �������� � ������ ������ ���� ����� ������� ������� � ������ Black
select top 3
	p.Name,
	p.Size,
	p.ListPrice

from Production.Product as p
where p.Color in ('Black')
order by p.ListPrice desc
