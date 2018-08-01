SELECT 
	smart_location,
	COUNT(*)
FROM 
	listings
GROUP BY 
	smart_location
ORDER BY
	COUNT(*) DESC 
	
-- The most popular neighourhood is 'Pacific Grove'