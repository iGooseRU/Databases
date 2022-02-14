-- ����� � ������� �� ����� ��������, ���� � ������ ����� ���������, 
-- � ������� ���� ����� 100 � ���� Black, ���������� ����� �� ����������� 
-- ��������� ���������.
select
	p.Name,
	p.Color,
	p.Size

from Production.Product as p
where p.ListPrice < 100 and p.Color in ('Black')
order by p.ListPrice asc