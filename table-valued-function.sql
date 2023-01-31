/* CREATE FUNCTION production.getBrands()
RETURNS @brands TABLE (
	brand_id INT,
	brand_name VARCHAR(255)
)
AS
BEGIN
	INSERT INTO @brands
	SELECT brand_id, brand_name
	FROM production.brands;
	
	RETURN;
END */


-- SELECT * FROM production.GetBrands() 

-- DROP FUNCTION IF EXISTS dbo.GetBrands;


/* CREATE FUNCTION production.getProductsByCategory(@category_name VARCHAR(255))
RETURNS 
      @Result TABLE (
            product_id INT,
            product_name VARCHAR(255),
            brand_id INT,
            category_id INT,
            model_year SMALLINT,
            list_price DECIMAL(10, 2)
      )
      AS
      BEGIN
            INSERT INTO @Result (product_id, product_name, brand_id, category_id, model_year, list_price)
            SELECT p.product_id, p.product_name, p.brand_id, p.category_id, p.model_year, p.list_price
            FROM production.products p
            JOIN production.categories c ON p.category_id = c.category_id
            WHERE c.category_name = @category_name;
RETURN;
END */


/* ALTER FUNCTION production.getProductsByCategory(@category_name VARCHAR(255))
RETURNS 
      @Result TABLE (
            product_id INT,
            product_name VARCHAR(255),
            brand_id INT,
            category_id INT,
            list_price DECIMAL(10, 2)
      )
      AS
      BEGIN
            INSERT INTO  @Result (product_id, product_name, brand_id, category_id, list_price)
            SELECT TOP 5 p.product_id, p.product_name, p.brand_id, p.category_id, p.list_price
            FROM production.products p
            JOIN production.categories c ON p.category_id = c.category_id
            WHERE c.category_name = @category_name;
RETURN;
END */

SELECT COUNT(*) FROM production.getProductsByCategory('Road Bikes');

-- DROP FUNCTION production.getProductsByCategory






