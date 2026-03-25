 ---Query 1: Viewing first 10 rows of the table
select * from `workspace`.`default`.`brightcoffee_consultation` limit 10;


---Query 2: Viewing first 10 rows of the table
SELECT DISTINCT store_location 
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 3: Select specific columns
SELECT transaction_id,
        product_id,
        unit_price
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 4: Using a column alias
SELECT product_category AS Category, 
        unit_price AS Product_Price
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 5: Filtering statements
SELECT *
FROM `workspace`.`default`.`brightcoffee_consultation`
WHERE Product_Category = 'Coffee';

---Query 6: Filtering using WHERE and AND
SELECT*
FROM `workspace`.`default`.`brightcoffee_consultation`
WHERE product_category ='coffee'
AND unit_price > 10;

---Query 7: Finding minimum and maximum values
SELECT MIN(unit_price) AS min_price
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 9: Finding maximum unit price 
SELECT MAX(unit_price) AS Max_price
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 10: Filtering using WHERE and IN
SELECT*
FROM `workspace`.`default`.`brightcoffee_consultation`
WHERE product_category IN ('Coffee', 'Tea');

---Query 11: Sorting results
SELECT product_category, 
        unit_price
FROM `workspace`.`default`.`brightcoffee_consultation`
ORDER BY unit_price DESC; 

---Query 12: Counting total transactions
SELECT COUNT(*)
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 13: Calculate total sales
SELECT SUM(transaction_qty* unit_price)AS Total_Sales
FROM `workspace`.`default`.`brightcoffee_consultation`;

---Query 14: Calculate minimum and maximum price
SELECT MIN(unit_price) AS cheapest_item,
        MAX(unit_price) AS most_expensive_item
FROM `workspace`.`default`.`brightcoffee_consultation`;
