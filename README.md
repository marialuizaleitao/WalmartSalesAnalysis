# Walmart Sales Data Analysis Project

## Overview

This data analysis project delves into a Walmart Sales dataset obtained from [Kaggle](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting). The primary objective is to gain valuable insights into the sales performance of different branches, products, and customer segments. By leveraging various analytical techniques, this project aims to provide actionable recommendations for optimizing sales strategies.

## Dataset Information

The dataset comprises sales transactions from three Walmart branches located in Mandalay, Yangon, and Naypyitaw, containing 17 columns and 1000 rows.

## Project Steps

1. Data Collection

The dataset was sourced from the Kaggle Walmart Sales Forecasting Competition, offering a diverse and comprehensive set of sales transactions for analysis.

2. Business Questions

To guide the analysis, a set of business questions was formulated, categorizing them into three key areas:

- Product Analysis

Perform an in-depth analysis of the dataset to gain insights into various product lines. Identify the top-performing product lines and pinpoint areas for improvement within the product offerings.

- Sales Analysis

This analysis is focused on uncovering sales trends for products, aiming to assess the effectiveness of each applied sales strategy. The findings will guide modifications to enhance sales performance and achieve greater success.

- Customer Analysis

The objective of this analysis is to reveal distinct customer segments, discern purchase trends, and assess the profitability associated with each customer segment.

3. Data Wrangling & Feature Engineering

This initial step involves scrutinizing the data to identify and address NULL values through appropriate data replacement methods. The process includes building the [database](db.sql), creating tables, and inserting the data. Notably, by setting the NOT NULL constraint for each field during table creation, we effectively filter out any null values in our database.

Performing Feature Engineering involves creating new columns based on existing data. This includes adding a "time_of_day" column to analyze sales during the Morning, Afternoon, and Evening, providing insights into peak sales times. Additionally, a "day_name" column is introduced, indicating the days of the week (Mon, Tue, Wed, Thur, Fri) for each transaction, aiding in understanding each branch's busiest days. Lastly, a "month_name" column is generated, capturing the months (Jan, Feb, Mar) of transactions to assess which month of the year experiences the highest sales and profit.

4. Exploratory Data Analysis (EDA)

Utilized SQL queries to answer business questions and investigate various aspects such as product lines, sales trends, and customer behavior.

# Business Questions

These questions were thoughtfully formulated to explore and interpret trends related to products, sales, and customer behavior. The importance of these questions lies in their capacity to reveal actionable insights, aiding in the optimization of sales strategies, product lines, and customer engagement. 

The questions were divided into four subcategories: 

## Generic Questions:

- Which cities are in in the dataset?
- In which city is each branch located?

## Product-related Questions:

- How many unique product lines are present in the dataset?
- What is the most common payment method?
- Which product line is the best-selling?
- What is the total revenue by month?
- Which product line generated the highest revenue?
- In which city did the highest revenue occur?
- Which product line incurred the largest Value Added Tax (VAT)?
- Which branch surpassed the average number of products sold?
- What are the most common product lines by gender?
- What is the average rating for each product line?

## Sales-related Questions:
 
- How many sales occurred during each time of the day per weekday?
- Which customer type contributes the most to revenue?
- In which city is the VAT (Value Added Tax) percentage the highest?
- Which customer type pays the most in VAT?
- In which month did the largest Cost of Goods Sold (COGS) occur?

## Customer-related Questions:

- How many unique customer types are present in the data?
- How many unique payment methods are available in the data?
- Which customer type makes the highest number of purchases?
- What is the predominant gender of customers?
- What is the gender distribution per branch?
- During which time of the day do customers provide the highest ratings?
- During which time of the day per branch do customers provide the highest ratings?
- On which day of the week do customers, on average, provide the best ratings?

5. Revenue and Profit Calculations

Calculated Cost of Goods Sold (COGS) and Value Added Tax (VAT), determined total gross sales and gross profit and computed Gross Margin Percentage.

# Conclusion

This project serves as a testament to proficiency in:

- Data collection and preprocessing.
- SQL queries for business insights.
- Feature engineering for additional context.
- Exploratory Data Analysis techniques.
- Revenue and profit calculations for business metrics.

### Importance

The insights gained from this analysis can inform strategic decision-making, allowing for the optimization of sales strategies, product offerings, and customer engagement. This project showcases a strong analytical foundation and a practical approach to solving real-world business challenges.