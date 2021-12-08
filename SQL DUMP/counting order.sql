SELECT count(o.order_id), o.person_id,
		sum(o.total_price), d.delivery_time
FROM group4campuseats.orders AS o
JOIN group4campuseats.delivery1 AS d
	ON o.delivery_id = d.delivery_id
WHERE person_id = 55;