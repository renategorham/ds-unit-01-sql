SELECT 
	COUNT(*) trip_count,
	start_station
FROM 
	trips
GROUP by start_station
ORDER BY trip_count Desc