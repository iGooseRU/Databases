# Lab 1
____

### 1
```sql
-- Найти и вывести на экран названия продуктов, их цвет и размер.
SELECT 
	product.Name,
	product.Color,
	product.Size
	
FROM Production.Product as product
```
____

### 2
```sql
-- Найти и вывести на экран названия, цвет и размер таких продуктов, у которых цена более 100.
SELECT
	product.Name,
	product.Color,
	product.Size

FROM Production.Product as product
WHERE p.ListPrice > 100
```
____

### 3
```sql
-- Найти и вывести на экран название, цвет и размер таких продуктов, у которых цена менее 100 и цвет Black
SELECT
	product.Name,
	product.Color,
	product.Size

FROM Production.Product as product
WHERE product.ListPrice < 100 and product.Color in ('Black')
```
____

### 4
```sql
/*	Найти и вывести на экран название, цвет и размер таких продуктов, 
	у которых цена менее 100 и цвет Black, упорядочив вывод по возрастанию 
	стоимости продуктов. */
SELECT
	product.Name,
	product.Color,
	product.Size

FROM Production.Product as product
WHERE product.ListPrice < 100 and product.Color in ('Black')
ORDER BY product.ListPrice ASC
```
____

### 5
```sql
-- Найти и вывести на экран название и размер первых трех самых дорогих товаров с цветом Black
SELECT TOP 3
	product.Name,
	product.Size,
	product.ListPrice

FROM Production.Product as product
WHERE product.Color in ('Black')
ORDER BY product.ListPrice DESC
```
____

### 6
```sql
-- Найти и вывести на экран название и цвет таких продуктов, для которых определен и цвет, и размер
SELECT
	product.Name,
	product.Color

FROM Production.Product as product
WHERE product.Color IS NOT NULL AND
		product.Size IS NOT NULL
```
____

### 7
```sql
/*	Найти и вывести на экран не повторяющиеся цвета продуктов, 
	у которых цена находится в диапазоне от 10 до 50 включительно. */

SELECT DISTINCT 
	product.Color
	
FROM Production.Product as product
WHERE product.ListPrice BETWEEN 10 AND 50
```
____

### 8
```sql
-- Найти и вывести на экран все цвета таких продуктов, у которых в имени первая буква ‘L’ и третья ‘N’
SELECT DISTINCT 
	product.Color

FROM Production.Product as product
WHERE product.Name LIKE 'L_N%'
```
____

### 9
```sql
/*	Найти и вывести на экран названия таких продуктов, 
	которых начинаются либо на букву ‘D’, либо на букву ‘M’, 
	и при этом длина имени – более трех символов */
SELECT 
	product.Name
	
FROM Production.Product as product
WHERE product.Name LIKE '[DM]%' AND len(p.Name) > 3
```
____

### 10
```sql
-- Вывести на экран названия продуктов, у которых дата начала продаж – не позднее 2012 года.
SELECT 
	product.Name, 
	product.SellStartDate

FROM Production.Product as product
WHERE product.SellStartDate <= '2011-31-12'
```
____

### 11
```sql
-- Найти и вывести на экран названия всех подкатегорий товаров.
SELECT 
	subcategory.Name

FROM Production.ProductSubcategory as subcategory
```
____

### 12
```sql
-- Найти и вывести на экран названия всех категорий товаров.
SELECT 
	category.Name

FROM Production.ProductCategory as category
```
____

### 13
```sql
/*	Найти и вывести на экран имена всех клиентов из таблицы Person, 
	у которых обращение (Title) указано как «Mr.» */
SELECT
	person.FirstName, 
	person.MiddleName,
	person.LastName

FROM Person.Person as person
WHERE person.Title = 'Mr.'
```
____

### 14
```sql
/*	Найти и вывести на экран имена всех клиентов из таблицы Person,
	для которых не определено обращение (Title) */
 SELECT 
	person.FirstName,
	person.MiddleName,
	person.LastName,
	person.Title

FROM Person.Person as person
WHERE person.Title IS NULL
```
