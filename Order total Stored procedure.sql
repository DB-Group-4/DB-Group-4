Drop procedure FindOrderTotal
DELIMITER //
CREATE PROCEDURE FindOrderTotal(IN Person_ID int)
BEGIN
SELECT round((o.total_price + o.delivery_charge),2) AS Order_Total
FROM group4campuseats.orders  AS o
JOIN  group4campuseats.delivery1 AS d
ON o.delivery_id= d.delivery_id
WHERE d.delivery_id BETWEEN '9/5/2021' AND '9/30/2021'
	AND Person_ID = o.person_id;
END //
DELIMITER ;
Call FindOrderTotal('55')