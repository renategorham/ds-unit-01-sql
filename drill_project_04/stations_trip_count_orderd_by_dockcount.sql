-- Return a list of stations with a count of number of trips starting at that station but ordered by dock count.

SELECT 
	trips.start_station,
	COUNT(trips.trip_id),
	stations.dockcount
FROM 
	trips
LEFT JOIN
	stations
ON
	trips.start_station LIKE stations.name
GROUP BY 
	start_station
ORDER BY
	stations.dockcount DESC 