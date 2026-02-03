# Zepto Product & Inventory Analysis (SQL Project)

This project analyzes product and inventory data similar to Zepto using SQL.  
The goal is to practice real-world database querying and business analytics techniques as part of my Data Science learning journey.

The dataset contains product information such as category, price, discount, availability, and stock. Using SQL queries, insights were generated related to inventory, pricing, and discount strategy.

## Objectives

- Load and structure raw CSV data into MySQL
- Write SQL queries to explore product, pricing, and stock data
- Identify trends in discounts, availability, and category-wise inventory
- Generate insights useful for e-commerce and grocery delivery platforms
- Document results and build a SQL-based data analytics case study

## Dataset Information

- Domain: Grocery / E-commerce (Zepto-like dataset)
- Format: CSV file imported into MySQL
- Table Name: zepto_products
## Dataset Columns Description

| Column Name | Description |
|-------------|-------------|
| Category | Product category such as Snacks, Beverages, Dairy, Personal Care, etc. |
| name | Name of the product listed on the platform |
| mrp | Maximum Retail Price of the product |
| discountPercent | Discount percentage applied on the product |
| availableQuantity | Number of units currently available in stock |
| discountedSellingPrice | Final selling price after applying the discount |
| weightInGms | Weight of the product in grams |
| outOfStock | Stock status of the product (TRUE = out of stock, FALSE = in stock) |
| quantity | Pack size or number of items per unit (for multi-pack products) |

 
<a href="https://github.com/Kalai-2216/Data_analysis/blob/main/sql_zepto/Zepto_project.sql"> Sql File</a>

<a href="https://github.com/Kalai-2216/Data_analysis/blob/9f136e135f9be2115179f7cc23fab24dd27b312c/sql_zepto/zepto_v2.csv"> CSV Dataset</a>

data_analysis/
  
 └─ sql_zepto/
  
     ├─ README.md
     
     ├─ zepto_project.csv
     
     ├─ zepto_V2.csv


## Skills and Tools Used

- MySQL
- SQL queries (Aggregation, Filtering, Grouping, Sorting)
- Joins and Window functions (where applicable)
- Business analytics mindset
- CSV to SQL import process

## Key SQL Concepts Applied

- SELECT, WHERE, ORDER BY, GROUP BY, LIMIT
- Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- CASE statements for classification
- Derived metrics (inventory value, stock health)
- Window functions for top-N analysis

## Example Business Questions Solved

- Which category has the highest number of products?
- Which categories have the highest stock availability?
- Which products have the highest discount percentage?
- What is the average discounted by category?
- Which categories have the highest out-of-stock items?

## Learning Outcomes

- Understanding of SQL-based data analysis workflow
- Ability to import and manage CSV data in MySQL
- Writing analytical SQL queries for business insights
- Converting raw product data into actionable recommendations
- Building a complete SQL case study project

## Future Improvements

- Add orders and customers tables for deeper analysis
- Build Power BI / Tableau dashboard using SQL output
- Integrate Python for SQL + Pandas hybrid analysis
- Create RFM segmentation if customer data is added
- Forecasting & replenishment use-case for inventory planning
