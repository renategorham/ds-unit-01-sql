WITH
	rainy_days
AS( 
	SELECT 
		Date,
		Events
	FROM 
		weather
	WHERE 
		Events like 'Rain')
SELECT 
	t.trip_Id,
	t.start_date,
	t.duration
FROM 
	trips t
INNER JOIN 
	rainy_days r
ON 
	substr(start_date, 0, 11) LIKE r.Date 
ORDER BY duration desc
LIMIT 3