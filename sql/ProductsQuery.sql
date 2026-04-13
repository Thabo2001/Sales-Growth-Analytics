-- Data exploration: understand how the products table currently looks
SELECT * FROM dbo.products 

--Categorise products based on price, makes it easy to understand the price ranges 
SELECT 
	ProductID,
	ProductName, 
	Price,
	--Choose a category based on price 
	CASE 
		WHEN Price<50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High' 
	END AS PriceCategory 

	

FROM
	dbo.products 
--Show the most expensive products first
ORDER BY Price DESC