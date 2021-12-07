Drop procedure FindOrderTotal
DELIMITER //
CREATE PROCEDURE FindOrderTotal(IN Person_ID int)
BEGIN
SELECT o.order_id, p.person_name, round((o.total_price + o.delivery_charge),2) AS Order_Total
FROM campus_eats_fall2020.order AS o
LEFT JOIN campus_eats_fall2020.person AS p
 ON o.person_id = p.person_id
WHERE Person_ID = p.person_id;
END //
DELIMITER ;
Call FindOrderTotal('3')