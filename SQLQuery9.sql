/* ����� � ������� �� ����� �������� ����� ���������, 
������� ���������� ���� �� ����� �D�, ���� �� ����� �M�, 
� ��� ���� ����� ����� � ����� ���� �������� */
select p.Name

from Production.Product as p
where p.Name like '[DM]%'
		and len(p.Name) > 3