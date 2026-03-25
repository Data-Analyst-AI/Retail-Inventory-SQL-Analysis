# Retail Inventory & Sales Analysis (SQL)

## 📊 Business Overview
This project focuses on analyzing retail operations and inventory turnover for a department store context. Leveraging SQL, I explored large datasets to identify patterns in customer behavior, stock-out risks, and department performance.

## 🎯 Key Objectives
* **Inventory Optimization:** Identify high-turnover products to prevent stock-outs.
* **KPI Management:** Monitor sales trends and order frequency across different departments.
* **Strategic Insights:** Provide data-driven recommendations for visual merchandising and stock allocation.

## 🛠️ Tech Stack
* **Database:** PostgreSQL (via DBeaver)
* **Language:** SQL (Complex Joins, CTEs, Aggregations)
* **Version Control:** Git & GitHub

## 📂 Project Structure
* `aisles.csv` & `products.csv`: Reference datasets for product categorization.
* `retail_analysis_queries.sql`: Main script containing performance queries.
* `.gitignore`: Configured to exclude large raw datasets from the repository.

## 📈 Key Insights from SQL Analysis

### 1. High-Traffic Departments (Top Sellers)
Through SQL aggregations, I identified the core departments driving volume:
* **Produce (Fruits & Veggies):** The undisputed leader with over 9.4M items sold.
* **Dairy Eggs:** Strong second place with 5.4M items.
* **Insight:** These departments are critical for inventory flow and require zero-stock-out strategies.

### 2. Customer Loyalty (Reorder Rates)
Using complex JOINS and AVG functions, I calculated which departments bring customers back:
* **Dairy Eggs:** Highest loyalty at **67.0%** reorder rate.
* **Produce:** Consistent performance at **65.0%**.
* **Beverages:** High recurring demand at **65.3%**.

### 3. Strategic Recommendation
Departments like **Snacks** show high volume but lower reorder rates (57.4%). This suggests a business opportunity to improve brand placement or promotional strategies to convert one-time buyers into recurring customers.
---
*Project developed as part of my transition into Data Analytics, combining my regional retail supervision background with technical data skills.*

