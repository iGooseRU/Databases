-- ������� �� ����� �������� ���������, � ������� ���� ������ ������ � �� ������� 2012 ����.
select p.Name, p.SellStartDate

from Production.Product as p
where p.SellStartDate <= '2011-31-12'
