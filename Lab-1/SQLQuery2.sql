-- ����� � ������� �� ����� ��������, ���� � ������ ����� ���������, � ������� ���� ����� 100.
select 
	p.Name,
	p.Color,
	p.Size

from Production.Product as p
where p.ListPrice > 100
