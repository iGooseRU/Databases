-- ����� � ������� �� ����� �� ������������� ����� ���������, 
-- � ������� ���� ��������� � ��������� �� 10 �� 50 ������������.

select distinct p.Color

from Production.Product as p

where p.ListPrice between 10 and 50