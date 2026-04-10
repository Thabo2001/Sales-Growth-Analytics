--Understand how customers look 
SELECT * FROM dbo.customers
--Understand the geography table looks 
SELECT * FROM dbo.geography

--join customers with geography to understand where customers are located
SELECT 
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	g.Country,
	g.City
FROM 
	dbo.customers AS c -- alias for customers table 
LEFT JOIN 
	dbo.geography AS g -- alias for geography table
ON 
	c.GeographyID = g.GeographyID -- join condition based on GeographyID