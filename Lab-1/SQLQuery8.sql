-- ����� � ������� �� ����� ��� ����� ����� ���������, � ������� � ����� ������ ����� �L� � ������ �N�
select distinct p.Color

from Production.Product as p
where p.Name like 'L_N%'