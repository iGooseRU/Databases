-- ����� � ������� �� ����� ��������, ���� � ������ ����� ���������, � ������� ���� ����� 100 � ���� Black
select
	p.Name,
	p.Color,
	P.Size

from Production.Product as p
where p.ListPrice < 100 and p.Color in ('Black')
