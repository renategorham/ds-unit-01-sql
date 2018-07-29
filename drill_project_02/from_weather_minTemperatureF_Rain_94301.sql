SELECT 
	MinTemperatureF
FROM 
	weather
WHERE 
	ZIP = 94301 AND 
	Events like 'Rain'
	