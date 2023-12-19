-- Creating the database
DROP DATABASE IF EXISTS walmartsales;
CREATE DATABASE walmartsales;
USE walmartsales;

-- Create sales table
CREATE TABLE IF NOT EXISTS sales (
    invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10 , 2 ) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT NOT NULL,
    total DECIMAL(12 , 4 ) NOT NULL,
    `date` DATETIME NOT NULL,
    `time` TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10 , 2 ) NOT NULL,
    gross_margin_pct FLOAT,
    gross_income DECIMAL(12 , 4 ),
    rating FLOAT
);

-- Feature Engineering
SET SQL_SAFE_UPDATES = 0;

-- time_of_day
ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);
UPDATE sales 
SET 
    time_of_day = (CASE
        WHEN `time` BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
        WHEN `time` BETWEEN '12:01:00' AND '16:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END);

-- day_name
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
UPDATE sales 
SET 
    day_name = DAYNAME(date);
    
-- month_name
ALTER TABLE sales ADD COLUMN month_name VARCHAR(20);
UPDATE sales 
SET 
    month_name = MONTHNAME(date);