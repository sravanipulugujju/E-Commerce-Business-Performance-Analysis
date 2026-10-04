# 🛒 E-Commerce Business Performance Analysis

![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?logo=microsoftexcel&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)

End-to-end analysis of a 40,000-order e-commerce dataset, from raw-data cleaning to SQL business queries, an Excel pivot analysis, and an interactive Power BI dashboard, built to answer business questions around sales, profit, discounts, and customer behavior.

## Table of Contents
- [Project Structure](#project-structure)
- [Objective](#objective)
- [Dataset](#dataset)
- [Workflow](#workflow)
- [Data Cleaning](#1-data-cleaning)
- [Exploratory Data Analysis](#2-exploratory-data-analysis-eda)
- [SQL Analysis](#3-sql-analysis)
- [Excel Analysis](#4-excel-analysis)
- [Power BI Dashboard](#5-power-bi-dashboard)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)
- [Tools & Technologies](#tools--technologies)
- [How to Use](#how-to-use)
- [Author](#author)

## Project Structure

```
├── ecommerce uncleaned.csv           # Raw dataset
├── ecommerce cleaned.csv             # Cleaned dataset (output of the cleaning notebook)
├── ecommerce_cleaning_code.ipynb     # Step-by-step data cleaning (Jupyter/Colab)
├── EDA_Ecommerce_Project.ipynb       # Exploratory analysis & visualizations
├── ecommerce sql analysis.sql        # SQL queries answering business questions
├── ecommerce excel analysis.xlsx     # Excel pivot-table analysis
├── ecommerce dashboard.pbix          # Power BI interactive dashboard
└── README.md
```

| File | Link |
|---|---|
| Raw data | [ecommerce uncleaned.csv](ecommerce%20uncleaned.csv) |
| Cleaned data | [ecommerce cleaned.csv](ecommerce%20cleaned.csv) |
| Data cleaning notebook | [ecommerce_cleaning_code.ipynb](ecommerce_cleaning_code.ipynb) |
| EDA notebook | [EDA_Ecommerce_Project.ipynb](EDA_Ecommerce_Project.ipynb) |
| SQL queries | [ecommerce sql analysis.sql](ecommerce%20sql%20analysis.sql) |
| Excel analysis | [ecommerce excel analysis.xlsx](ecommerce%20excel%20analysis.xlsx) |
| Power BI dashboard | [ecommerce dashboard.pbix](ecommerce%20dashboard.pbix) |

## Objective

Analyze e-commerce transaction data to uncover insights around sales, profit, discounts, customer behavior, and regional performance, and turn those insights into a business-ready dashboard that supports decisions.

## Dataset

- **Size:** 40,000 orders, 13 columns, covering January 2025 to June 2026
- **Coverage:** 4 categories, 13 sub-categories, 8 cities across 6 states, 5 payment modes
- **Columns:** Order_ID, Order_Date, Customer_ID, Product_Name, Category, Sub_Category, Quantity, Sales, Discount, Profit, City, State, Payment_Mode
- **Source:** [ADD dataset name and link, e.g. Kaggle]

## Workflow

```
Raw Data → Data Cleaning (Python) → EDA (Python) → Business Queries (SQL)
        → Pivot Analysis (Excel) → Interactive Dashboard (Power BI)
```

## 1. Data Cleaning

- Loaded the raw dataset (40,200 rows) and explored structure, data types, and null counts
- Found 80 missing values in each of 9 columns (720 in total), and 200 duplicate Order_IDs
- Handled missing values column by column:

| Column | Missing-value strategy |
|---|---|
| Order_Date | Converted to datetime, filled with median date |
| Category / Sub_Category | Filled with mode (most frequent value) |
| Customer_ID / City / State | Filled with mode (most frequent value) |
| Quantity / Sales / Profit | Filled with mean |

- Removed duplicate orders and ran a final validation pass to confirm a clean, analysis-ready dataset (40,000 rows, no missing values)

## 2. Exploratory Data Analysis (EDA)

Visual analysis using Matplotlib and Seaborn to answer six business questions.

### Q1. Which category generates the most revenue, and is it also the most profitable?

Electronics brings ~75% of revenue, but all four categories earn almost the same profit margin (~13.9% to 14.1%).

### Q2. Does a higher discount reduce profit?

Average profit per order falls as discount rises, but average order value falls too, so the profit margin stays flat.

### Q3. Which states generate the most profit, and where should the business expand?

Andhra Pradesh and Maharashtra lead, mainly because each has two cities in the data. Orders are evenly spread across all 8 cities.

### Q4. Are there unusually high-value orders that need review?

5,762 orders (~14%) are flagged as high-value outliers using the IQR method.

### Q5. Which payment mode do customers use the most?

UPI is the most used (20.3%), but all five modes are close to each other.

### Q6. Which months have the highest sales, and is there a seasonal pattern?

Monthly sales stay between ₹4.3 Cr and ₹5.1 Cr, with no strong seasonal swing.

### More analysis

Computers and Mobiles drive most of the profit, and the top 10 customers each spent ₹6.9 to ₹8.8 lakh.

## 3. SQL Analysis

10 business questions solved in MySQL using GROUP BY, HAVING, subqueries, and aggregations. Full queries: [ecommerce sql analysis.sql](ecommerce%20sql%20analysis.sql)

| # | Business Question |
|---|---|
| Q1 | Top category by revenue & profit margin |
| Q2 | Does discount level reduce average profit? |
| Q3 | Top states by profit (expansion targets) |
| Q4 | Most-used payment modes |
| Q5 | Best & worst performing sub-categories |
| Q6 | Top 10 customers by total spend |
| Q7 | Cities with highest orders & avg order value |
| Q8 | Categories with above-average discount |
| Q9 | % revenue contribution per category |
| Q10 | Monthly sales trend |

## 4. Excel Analysis

Pivot-table views (Category, City, Payment Mode) for stakeholders who prefer Excel over code or SQL. File: [ecommerce excel analysis.xlsx](ecommerce%20excel%20analysis.xlsx)

## 5. Power BI Dashboard

Interactive **E-Commerce Business Performance Dashboard** with KPI cards, charts, and filters, covering sales, profit, discount impact, regional performance, and payment-mode distribution in a single view. File: [ecommerce dashboard.pbix](ecommerce%20dashboard.pbix) (open in Power BI Desktop)

## Key Insights

- 💰 **Overall performance:** ₹83.4 Cr total sales and ₹11.7 Cr total profit, an overall profit margin of ~14.0%.
- 📦 **Electronics dominates revenue**, contributing ~75% of total sales (₹62.6 Cr of ₹83.4 Cr), but its ~14.05% profit margin is in line with every other category, so revenue leadership does not translate into a profitability edge.
- 💸 **Profit margins are tightly clustered** (~13.9% to 14.1%) across all categories, so profit tracks sales volume rather than category choice.
- 🏷️ **Discount impact:** Average profit per order falls from ₹3,150 (no discount) to ₹2,632 (20% discount), but average order value also falls (₹22,669 to ₹18,223). Profit margin stays flat at ~13.9% to 14.4%, so discounts lower profit per order only because discounted orders are smaller, not because margin shrinks. 5% and 10% discounts cover ~60% of all orders.
- 🗺️ **Top states by profit:** Andhra Pradesh (₹2.95 Cr), Maharashtra (₹2.83 Cr), and Delhi (₹1.53 Cr). Andhra Pradesh and Maharashtra lead mainly because each has two cities in the data (Visakhapatnam + Vijayawada, Mumbai + Pune); city-level performance is very similar.
- 🌆 **Orders are evenly spread across all 8 cities** (~4,870 to 5,160 orders each), so no single city dominates.
- 💳 **UPI is the most-used payment mode** (8,124 orders, ~20.3%), narrowly ahead of Net Banking, Debit Card, Cash on Delivery, and Credit Card.
- 📅 **Monthly sales are stable**, staying between ₹4.3 Cr and ₹5.1 Cr per month. The highest month is December 2025 (₹5.13 Cr) and the lowest is March 2025 (₹4.25 Cr), so there is no strong seasonal swing.
- 🔎 **Outliers:** 5,762 orders (~14%) are flagged as high-value outliers by the IQR method and are worth a separate review.

## Recommendations

- **Discounts:** Margin does not fall as discounts rise, so moderate discounts (5% to 10%) are low-risk. Only ~5% of orders use a 20% discount, so test deeper discounts on a small group before rolling them out.
- **Expansion:** Profit is spread evenly across cities, so the lead of Andhra Pradesh and Maharashtra comes from having two cities each. Adding a second city in Delhi, Tamil Nadu, Telangana, or Karnataka is a practical way to grow.
- **Category mix:** 75% of revenue comes from Electronics, and other categories earn the same margin. Growing Home & Kitchen, Clothing, and Beauty would reduce dependence on one category without losing profit margin.

## Tools & Technologies

| Layer | Tools |
|---|---|
| Data Cleaning & EDA | [Python](https://www.python.org), [pandas](https://pandas.pydata.org), [NumPy](https://numpy.org), [Matplotlib](https://matplotlib.org), [Seaborn](https://seaborn.pydata.org), [Google Colab](https://colab.research.google.com) |
| Business Queries | [MySQL](https://www.mysql.com), MySQL Workbench |
| Ad-hoc Analysis | [Microsoft Excel](https://www.microsoft.com/microsoft-365/excel) (Pivot Tables) |
| Dashboard | [Power BI Desktop](https://powerbi.microsoft.com) |

## How to Use

1. Clone the repo
   ```bash
   git clone https://github.com/sravanipulugujju/E-Commerce-Business-Performance-Analysis.git
   cd E-Commerce-Business-Performance-Analysis
   ```
2. Run `ecommerce_cleaning_code.ipynb` first (it reads the raw CSV and produces the cleaned dataset)
3. Run `EDA_Ecommerce_Project.ipynb` for exploratory analysis and charts
4. Load `ecommerce cleaned.csv` into MySQL and run `ecommerce sql analysis.sql` to reproduce the business-question queries
5. Open `ecommerce dashboard.pbix` in Power BI Desktop to explore the interactive dashboard

## Author

**Pulugujju Sravani** | Data Analyst (Fresher) | MCA 2026

- LinkedIn: [linkedin.com/in/sravani-pulugujju-b08b523a4](https://www.linkedin.com/in/sravani-pulugujju-b08b523a4)
- GitHub: [github.com/sravanipulugujju](https://github.com/sravanipulugujju)
- Email: sravanipulugujju26@gmail.com

Feedback and suggestions are welcome. Feel free to fork, explore, and reach out!
