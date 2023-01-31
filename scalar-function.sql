/* CREATE FUNCTION sales.getDiscount(@price FLOAT, @discount FLOAT)
RETURNS FLOAT
AS
BEGIN
   RETURN (@price * (@discount / 100))
END */

-- SELECT sales.getDiscount(450, 10) AS discounted_amount;

/* SELECT product_name, list_price, 
    sales.getDiscount(list_price, 10.0) AS discount, 
    list_price - sales.getDiscount(list_price, 10.0) AS final_price
FROM production.products
WHERE list_price > 500 */


/* ALTER FUNCTION sales.getDiscount(@price FLOAT, @discount FLOAT)
RETURNS FLOAT
AS
BEGIN
   IF (@price > 500)
    RETURN (@price * (@discount / 100))
 RETURN @price
END; */



-- DROP FUNCTION sales.getDiscount;

-- DROP FUNCTION IF EXISTS sales.getDiscount;


