CREATE OR REPLACE VIEW rating AS
SELECT i.restaurant_id, res.restaurant_name, min(r.restaurant_rating) AS Min_Rating,
	max(r.restaurant_rating) AS Max_Rating, avg(r.restaurant_rating) AS Average_Rating
FROM group4campuseats.items1 AS i
LEFT JOIN group4campuseats.ratings AS r
ON i.item_id = r.item_id
LEFT JOIN group4campuseats.restaurants2 AS res
ON i.restaurant_id = res.restaurant_id
WHERE i.restaurant_id =103;

SELECT * FROM group4campuseats.rating;

    
    