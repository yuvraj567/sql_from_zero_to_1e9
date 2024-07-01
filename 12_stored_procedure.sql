use clause;

-- create a procedure to get all order details
DELIMITER /
CREATE PROCEDURE getOrderDetails()
BEGIN
SELECT * from employee;
END /
DELIMITER ;

CALL getOrderDetails();