CREATE OR REPLACE VIEW rating AS
SELECT i.restaurant_id, res.restaurant_name, max(r.restaurant_rating), 
	min(r.restaurant_rating), 	avg(r.restaurant_rating)
FROM campus_eats_fall2020.item AS i
LEFT JOIN campus_eats_fall2020.ratings AS r
	ON i.item_id = r.item_id
LEFT JOIN campus_eats_fall2020.restaurant AS res
	ON i.restaurant_id = res.restaurant_id
WHERE i.restaurant_id = 7;

