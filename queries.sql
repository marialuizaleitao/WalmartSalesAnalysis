-- GENERIC QUESTIONS
-- Which cities are in in the dataset?
SELECT 
	DISTINCT city AS `Cities`
FROM sales;

-- In which city is each branch located?
SELECT 
	DISTINCT city AS `Location`,
    branch AS `Branch`
FROM sales;

-- PRODUCT-RELATED QUESTIONS
-- How many unique product lines are present in the dataset?
SELECT 
    COUNT(DISTINCT product_line) AS `Different product lines`
FROM
    sales;

-- What is the most common payment method?
SELECT 
    payment AS `Payment Method`, COUNT(payment) AS `Quantity`
FROM
    sales
GROUP BY payment
ORDER BY Quantity DESC;

-- Which product line is the best-selling?
SELECT 
    product_line AS `Product Line`, COUNT(product_line) AS `Quantity`
FROM
    sales
GROUP BY product_line
ORDER BY Quantity DESC;

-- What is the total revenue by month?
SELECT 
    SUM(total) AS `Revenue`, month_name AS `Month`
FROM
    sales
GROUP BY Month
ORDER BY Revenue DESC;

-- Which product line generated the highest revenue?
SELECT 	
	product_line AS `Product Line`, SUM(total) AS `Revenue`
FROM sales
GROUP BY product_line
ORDER BY Revenue DESC;

-- In which city did the highest revenue occur?
SELECT 
    city AS `City`, branch AS `Branch`, SUM(total) AS `Revenue`
FROM
    sales
GROUP BY city , branch
ORDER BY Revenue DESC;

-- Which product line incurred the largest Value Added Tax (VAT)?
SELECT 
	product_line, AVG(tax_pct) AS `VAT`
FROM sales
GROUP BY product_line
ORDER BY VAT DESC;

-- Which branch surpassed the average number of products sold?
SELECT 
    branch AS `Branch`, SUM(quantity) AS `Quantity`
FROM
    sales
GROUP BY branch
HAVING Quantity > (SELECT AVG(quantity) FROM sales);

-- What are the most common product lines by gender?
SELECT gender AS `Gender`, product_line AS `Product Line`, count(gender) AS `Total`
FROM sales
GROUP BY gender, product_line
ORDER BY Total DESC;

-- What is the average rating for each product line?
SELECT 
   product_line AS `Product Line`,  ROUND(AVG(rating), 2) AS `Average Rating`
FROM
    sales
GROUP BY product_line
ORDER BY AVG(rating) DESC;

-- SALES-RELATED QUESTIONS
-- How many sales occurred during each time of the day per weekday?
SELECT
	time_of_day AS `Period`,
	COUNT(*) AS `Total Sales`,
    day_name AS `Day of the Week`
FROM sales
GROUP BY day_name, time_of_day
ORDER BY day_name, COUNT(*) DESC;

-- Which customer type contributes the most to revenue?
SELECT 
    customer_type AS `Customer Type`, SUM(total) AS `Revenue`
FROM
    sales
GROUP BY customer_type
ORDER BY Revenue DESC;

-- In which city is the VAT (Value Added Tax) percentage the highest?
SELECT 
    city AS `City`, ROUND(AVG(tax_pct), 2) AS `Value Added Tax`
FROM sales
GROUP BY city
ORDER BY AVG(tax_pct) DESC;

-- Which customer type pays the most in VAT?
SELECT 
    customer_type AS `Costumer Type`, ROUND(AVG(tax_pct), 2) AS `Value Added Tax`
FROM sales
GROUP BY customer_type
ORDER BY AVG(tax_pct) DESC;

-- In which month did the largest Cost of Goods Sold (COGS) occur?
SELECT 
	SUM(cogs) AS `Total COGS`, month_name AS `Month`
FROM sales
GROUP BY month_name
ORDER BY `Total COGS` DESC;

-- COSTUMER-RELATED QUESTIONS
-- How many unique customer types are present in the data?
SELECT DISTINCT
    customer_type AS `Customer Types`
FROM
    sales;

-- How many unique payment methods are available in the data?
SELECT DISTINCT
    payment AS `Payment Methods`
FROM
    sales;

-- Which customer type makes the highest number of purchases?
SELECT 
    customer_type AS `Customer Type`, COUNT(*) AS `Number of Purchases`
FROM
    sales
GROUP BY customer_type
ORDER BY COUNT(*) DESC;

-- What is the predominant gender of customers?
SELECT 
    gender AS `Gender`, COUNT(*) AS `Number of Customers`
FROM
    sales
GROUP BY gender
ORDER BY COUNT(*) DESC;

-- What is the gender distribution per branch?
SELECT 
    gender AS `Gender`, branch AS `Branch`, COUNT(*) AS `Number of Customers`
FROM
    sales
GROUP BY branch, gender
ORDER BY branch, gender, COUNT(*) DESC;

-- During which time of the day do customers provide the highest ratings?
SELECT 
   time_of_day AS `Period`, AVG(rating) AS `Average Rating`
FROM
    sales
GROUP BY Period
ORDER BY AVG(rating) DESC;

-- During which time of the day per branch do customers provide the highest ratings?
SELECT 
   branch AS `Branch`, time_of_day AS `Period`, AVG(rating) AS `Average Rating`
FROM
    sales
GROUP BY Period, Branch
ORDER BY Branch, AVG(rating) DESC;

-- On which day of the week do customers, on average, provide the best ratings?
SELECT 
   day_name AS `Day of the Week`, AVG(rating) AS `Average Rating`
FROM
    sales
GROUP BY day_name
ORDER BY AVG(rating) DESC;