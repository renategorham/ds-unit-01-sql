SELECT 
	end_station,
	AVG(duration) average_trip
FROM 
	trips
GROUP BY end_station
ORDER BY average_trip desc