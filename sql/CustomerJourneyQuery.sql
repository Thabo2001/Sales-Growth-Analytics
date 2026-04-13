--1. Check how customer journey data looks like
SELECT * FROM dbo.customer_journey;

--2. CTE TO CHECK FOR DUPLICATE RECORDS 
WITH DuplicateRecords AS 
(
	SELECT 
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Stage,
		Action,
		Duration,
		--USE ROW NUMBER TO ASSIGN A UNIQUE ROW NUMBER TO EACH RECORD WITHIN THE PARTITION BELOW 
		ROW_NUMBER() OVER(
			--PARTITION BY ALL COLUMNS TO CHECK FOR DUPLICATES
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
			--ORDER BY JourneyID --ORDER BY JOURNEYID TO ENSURE CONSISTENT ASSIGNMENT OF ROW NUMBERS
			ORDER BY JourneyID
			) AS row_num  --New  column that numbers each row within its partition 
	FROM 
			dbo.customer_journey
)  
SELECT *
FROM DuplicateRecords
WHERE row_num>1 --Condition for the queries with more than 1 record 
ORDER BY JourneyID; --Order by JourneyID to see the duplicates together

--3. Query to select the final cleaned and standardized data 
SELECT 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage, 
	Action, 
	COALESCE(Duration, avg_duration) AS Duration --Replace null values in duration with the average duration for that stage and action combination
FROM 
(
--Subquery to process and clean the data 
	SELECT 
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		UPPER(Stage) AS Stage,
		Action,
		Duration, 
		AVG(DURATION) OVER (PARTITION BY VisitDate) AS avg_duration, --Calculate the average duration
		ROW_NUMBER() OVER (
			PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action
			ORDER BY JourneyID
			) AS row_num
		FROM 
			dbo.customer_journey
		)AS subquery -- this subquery allows us to calculate the average duration and assign row numbers before we filter for duplicates and replace null values
		
WHERE 
	row_num=1 --Keep only the first record for each duplicate set, ensuring that we have unique records in the final output
ORDER BY VisitDate DESC; --Order the final output by VISITDate for better readability