SELECT 
	(CASE WHEN docks_available = 0 THEN 'full' ELSE 'not_full' END) docks_full,
	COUNT(*) as station_count,
	station_id
FROM 
	status 
WHERE docks_full LIKE 'full'
GROUP BY 
	station_id
ORDER BY 
	station_count DESC



