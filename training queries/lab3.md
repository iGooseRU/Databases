# Lab 3
____

### 1
```sql
/*	Найти и вывести на экран название продуктов и название категорий товаров, 
	к которым относится этот продукт, с учетом того, что в выборку попадут только товары 
	с цветом Red и ценой не менее 100. */
SELECT 
	product.Name,
	category.Name
	
FROM Production.Product AS product
	JOIN
		Production.ProductSubcategory AS subcategory
	ON 
		product.ProductSubcategoryID=subcategory.ProductSubcategoryID
	JOIN
		Production.ProductCategory AS category
	ON	
		subcategory.ProductCategoryID = category.ProductCategoryID
WHERE product.Color = 'Red' AND product.ListPrice > 100
```
____

### 2
```sql
-- Вывести на экран названия подкатегорий с совпадающими именами
-- вариант 1
SELECT 
	psc1.Name
FROM Production.ProductSubcategory AS psc1 
	JOIN
		Production.ProductSubcategory psc2
	ON
		psc1.Name = psc2.Name AND
		psc1.ProductSubcategoryID != psc2.ProductSubcategoryID

-- вариант 2
SELECT 
	subcategory1.Name
FROM Production.ProductSubcategory as subcategory1,
Production.ProductSubcategory as subcategory2
WHERE subcategory1.ProductSubcategoryID != subcategory2.ProductSubcategoryID AND
subcategory1.Name = subcategory2.Name

-- вариант 3
SELECT subcategory.Name
FROM Production.ProductSubcategory as subcategory 
GROUP BY subcategory.Name
HAVING COUNT(*)>1
```
____

### 3
```sql
-- Вывести на экран название категорий и количество товаров в данной категории
SELECT
	category.Name,
	COUNT(product.ProductID)
FROM Production.Product AS product 
	JOIN
		Production.ProductSubcategory AS subcategory
	ON 
		product.ProductSubcategoryID = subcategory.ProductSubcategoryID
	JOIN 
		Production.ProductCategory AS category
	ON 
		subcategory.ProductCategoryID = category.ProductCategoryID
GROUP BY category.Name
```
____

### 4
```sql
/* Вывести на экран название подкатегории, а также количество товаров в данной подкатегории 
с учетом ситуации, что могут существовать подкатегории с одинаковыми именами. */
SELECT 
	subcategory.Name, 
	COUNT(DISTINCT product.ProductID) as 'Количество'
FROM Production.Product as product
    INNER JOIN 
        Production.ProductSubcategory as subcategory
    ON 
        product.ProductSubcategoryID = subcategory.ProductSubcategoryID
GROUP BY subcategory.Name
```
____

### 5
```sql
-- Вывести на экран название первых трех подкатегорий с небольшим количеством товаров
SELECT TOP 3 
	subcategory.Name, 
	COUNT(product.ProductID) AS 'Count'
FROM Production.Product AS product
	JOIN 
		Production.ProductSubcategory as subcategory
	ON
		product.ProductSubcategoryID = subcategory.ProductSubcategoryID
GROUP BY subcategory.Name
ORDER BY COUNT(product.ProductID) DESC
```
____

### 6
```sql
-- Вывести на экран название подкатегории и максимальную цену продукта с цветом Red в этой подкатегории.
SELECT
	productSubcategory.Name,
	MAX(product.ListPrice) as 'Max price'
FROM Production.Product as product
	JOIN 
		Production.ProductSubcategory as productSubcategory
	ON 
		product.ProductSubcategoryID = productSubcategory.ProductSubcategoryID
WHERE product.Color = 'Red'
GROUP BY productSubcategory.Name
ORDER BY MAX(product.ListPrice)
```
____

### 7
```sql
-- Вывести на экран название поставщика и количество товаров, которые он поставляет
SELECT 
	vendor.Name,
	COUNT(product.ProductID) as 'Count'
FROM Production.Product as product
	JOIN 
		Purchasing.ProductVendor as productVendor
	ON
		product.ProductID = productVendor.ProductID
	JOIN
		Purchasing.Vendor as vendor
	ON productVendor.BusinessEntityID = vendor.BusinessEntityID
GROUP BY vendor.Name
```
____

### 8
```sql
-- Вывести на экран название товаров, которые поставляются более чем одним поставщиком
SELECT
	product.Name,
	COUNT(vendor.Name) as 'Vendor name'
FROM Production.Product as product
	JOIN
		Purchasing.ProductVendor as productVendor
	ON
		product.ProductID = productVendor.ProductID
	JOIN
		Purchasing.Vendor as vendor
	ON
		productVendor.BusinessEntityID = vendor.BusinessEntityID
GROUP BY product.Name
HAVING COUNT(vendor.Name) > 1
```
____

### 9
```sql
-- Вывести на экран название самого продаваемого товара.
SELECT TOP 1
	product.Name
FROM Production.Product as product
	JOIN 
		Sales.SalesOrderDetail as sales
	ON
		product.ProductID = sales.ProductID
GROUP BY product.Name
ORDER BY COUNT(sales.OrderQty) DESC
```
____

### 10
```sql
-- Вывести на экран название категории, товары из которой продаются наиболее активно
SELECT 
	category.Name

FROM Production.Product as product
	JOIN
		Production.ProductSubcategory as subcategory
	ON
		product.ProductSubcategoryID = subcategory.ProductSubcategoryID
	JOIN 
		Production.ProductCategory as category
	ON
		subcategory.ProductCategoryID = category.ProductCategoryID
	JOIN 
		Sales.SalesOrderDetail as sales
	ON 
		sales.ProductID = product.ProductID
GROUP BY category.Name
ORDER BY COUNT(sales.OrderQty) DESC
```
____

### 11
```sql
-- Вывести на экран названия категорий, количество подкатегорий и количество товаров в них.
SELECT
	category.Name,
	COUNT(DISTINCT subcategory.Name) as 'Subcategory count',
	COUNT(DISTINCT product.Name) as 'Product count'
FROM Production.Product as product
	JOIN 
		Production.ProductSubcategory as subcategory
	ON
		product.ProductSubcategoryID = subcategory.ProductSubcategoryID
	JOIN
		Production.ProductCategory as category
	ON 
		subcategory.ProductCategoryID = category.ProductCategoryID
GROUP BY category.Name
```
____

### 12
```sql
 /* Вывести на экран номер кредитного рейтинга и количество товаров, 
 поставляемых компаниями, имеющими этот кредитный рейтинг. */
 SELECT 
	vendor.CreditRating,
	COUNT(DISTINCT product.Name) as 'Product count'
 FROM Production.Product as product
	JOIN
		Purchasing.ProductVendor as productVendor
	ON
		productVendor.ProductID = product.ProductID
	JOIN 
		Purchasing.Vendor as vendor
	ON
		vendor.BusinessEntityID = productVendor.BusinessEntityID
GROUP BY vendor.CreditRating
```
____
