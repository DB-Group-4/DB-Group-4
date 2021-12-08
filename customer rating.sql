SELECT rate.restaurant_rating, p.person_id, p.person_name,
	 r.restaurant_name
FROM group4campuseats.ratings AS rate
JOIN group4campuseats.items1 AS i
	ON rate.item_id = i.item_id
JOIN group4campuseats.restaurants2 AS r
	ON i.restaurant_id = r.restaurant_id
JOIN group4campuseats.orders AS o
	ON i.Order_ID = o.order_id
JOIN group4campuseats.person1 AS p
	ON o.person_id = p.person_id
WHERE p.person_id = 51;

    
    
