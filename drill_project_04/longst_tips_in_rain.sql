--(Challenge) What's the length of the longest trip for each day it rains anywhere

SELECT 
	MAX(trips.duration),
	trips.start_date,
	weather.Events
FROM 
	trips
JOIN 
	weather
ON 
	substr(trips.start_date, 0, 11) LIKE weather.Date
WHERE 
	weather.Events LIKE 'Rain'