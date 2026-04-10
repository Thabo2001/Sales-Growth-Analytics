--Check engagement data table 
SELECT * FROM dbo.engagement_data
--Clean: Seperate ViewsClicks column, format the EngagementDate Column, Lettercase ContentType col 
SELECT 
	EngagementID,
	ContentID,
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType, --ensure that social media value is recognised as one
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) -1 )AS ViewsE, --Extract the views by taking the left part of the string before the hyphen
	RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks, --Extract the clicks by taking the right part of the string after the 
	Likes,
	FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate --Format the date to a more readable format
FROM
	dbo.engagement_data
WHERE 
	ContentType != 'Newsletter'; --Newsletter is not part of our analysis
					