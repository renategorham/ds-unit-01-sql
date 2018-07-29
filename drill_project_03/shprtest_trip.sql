SELECT 
	trip_id,
	MIN(duration) shortest_trip,
	start_station
FROM 
	trips