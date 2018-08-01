UPDATE listings 

SET price = TRIM(price, '$'),
	weekly_price = TRIM(weekly_price, '$'),
	monthly_price = TRIM(monthly_price, '$'),
	security_deposit = TRIM(security_deposit, '$'),
	cleaning_fee = TRIM(cleaning_fee, '$'),
	extra_people = TRIM(extra_people, '$')