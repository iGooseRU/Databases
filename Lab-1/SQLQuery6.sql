-- ����� � ������� �� ����� �������� � ���� ����� ���������, ��� ������� ��������� � ����, � ������
select
	p.Name,
	p.Color

from Production.Product as p

where p.Color is not null
		and p.Size is not null