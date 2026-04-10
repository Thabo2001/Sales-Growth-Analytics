--Understand how customer reviews look
SELECT * FROM dbo.customer_reviews
--Clean the unnecesary white spaces in the ReviewText column
SELECT 
	ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating, 
	REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM
	dbo.customer_reviews