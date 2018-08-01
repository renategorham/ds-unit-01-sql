WITH 
	bookings
AS 
	(
	SELECT 
		listing_id,
		date,
		available
	FROM 
		calendar)
SELECT 
	SUBSTR(bookings.date, 0, 8) year_month,
	--available,
	COUNT(bookings.available) total_offered,
	MIN(listings.price) min_listing_price,
	AVG(listings.price) avg_listing_price,
	MAX(listings.price) max_listing_price,
	SUM(listings.price) sum_listing_price
FROM 
	listings
LEFT JOIN 
	bookings
ON 
	bookings.listing_id LIKE listings.id
--WHERE 
	--available LIKE 'f'
GROUP BY 
	year_month --, available
--ORDER BY
	--avg_listing_price ASC
ORDER BY
	available ASC 
	
	
-- least expensive time of year October / December where average price is 254 and 258. (based on bookings)
-- April , May, June are busiest months
	
	