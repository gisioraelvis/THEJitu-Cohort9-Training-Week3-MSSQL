/* CREATE FUNCTION production.getCategories()
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM production.categories */


--  SELECT * FROM production.getCategories()

-- DROP FUNCTION production.getCategories

/* CREATE FUNCTION production.getProductsByCategories(@category VARCHAR(255))
RETURNS TABLE
AS
RETURN
    SELECT p.product_id, p.product_name
    FROM production.products p
    JOIN production.categories c ON p.category_id = c.category_id
    WHERE c.category_name = @category */


-- SELECT * FROM production.getProductsByCategories('Road Bikes')

-- DROP FUNCTION IF EXISTS production.getProductsByCategories


/* CREATE FUNCTION dbo.users()
RETURNS @users TABLE (
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(255),
        phone VARCHAR(25),
        user_type VARCHAR(20)
    )
AS
BEGIN
    INSERT INTO @users
    SELECT 
        first_name, 
        last_name, 
        email, 
        phone,
        'Staff'
    FROM
        sales.staffs;

    INSERT INTO @users
    SELECT 
        first_name, 
        last_name, 
        email, 
        phone,
        'Customer'
    FROM
        sales.customers;
    RETURN;
END;
 */
-- DROP FUNCTION IF EXISTS dbo.users