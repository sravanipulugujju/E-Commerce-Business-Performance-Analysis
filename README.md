# 🛒 E-Commerce Business Performance Analysis

![Python](https://img.shields.io/badge/Python-pandas%20%7C%20numpy%20%7C%20seaborn-blue)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange)
![Excel](https://img.shields.io/badge/Excel-PivotTables-green)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)

End-to-end analysis of a **40,000-order e-commerce dataset** — from raw-data cleaning to SQL business queries, an Excel pivot analysis, and an interactive Power BI dashboard — built to answer real business questions around sales, profit, discounts, and customer behavior.

---

## 📑 Table of Contents

- [Project Structure](#-project-structure)
- [Objective](#-objective)
- [Workflow](#-workflow)
- [Data Cleaning](#-1-data-cleaning)
- [Exploratory Data Analysis](#-2-exploratory-data-analysis-eda)
- [SQL Analysis](#-3-sql-analysis)
- [Excel Analysis](#-4-excel-analysis)
- [Power BI Dashboard](#-5-power-bi-dashboard)
- [Key Insights](#-key-insights)
- [Tools & Technologies](#-tools--technologies)
- [How to Use](#-how-to-use)

---

## 📁 Project Structure

```
├── ecommerce_cleaning_code.ipynb     # Step-by-step data cleaning (Jupyter/Colab)
├── EDA_Ecommerce_Project.ipynb       # Exploratory analysis & visualizations
├── ecommerce_cleaned_project.sql     # SQL queries answering business questions
├── ecommerce_excel_analysis.xlsx     # Excel pivot-table analysis
├── ecommerce_dashboard.pbix          # Power BI interactive dashboard
└── README.md
```

## 🎯 Objective

Analyze e-commerce transaction data to uncover insights around **sales, profit, discounts, customer behavior, and regional performance**, and turn those insights into a business-ready, decision-driving dashboard.

## 🔄 Workflow

```
Raw Data → Data Cleaning (Python) → EDA (Python) → Business Queries (SQL)
        → Pivot Analysis (Excel) → Interactive Dashboard (Power BI)
```

## 🧹 1. Data Cleaning


- Loaded the raw dataset and explored structure, data types, and null counts
- Handled missing values column by column:
  | Column | Missing-value strategy |
  |---|---|
  | `Order_Date` | Converted to datetime, filled with **median date** |
  | `Category` / `Sub_Category` | Filled with **mode** (most frequent value) |
  | `Quantity` / `Sales` / `Profit` | Filled with **mean** |
- Final validation pass to confirm a clean, analysis-ready dataset (40,000 rows)

## 📊 2. Exploratory Data Analysis (EDA)


Visual analysis (Matplotlib / Seaborn) answering:

- Which category generates the most revenue — and is it also the most profitable?
- Does a higher discount actually reduce profit?
- Which states generate the most profit — where should the business expand?
- Are there unusually high-value orders (IQR outlier check)?
- Which payment mode do customers prefer?
- Which months show the highest sales, and is there a seasonal pattern?

## 🗃️ 3. SQL Analysis


10 business questions solved with `GROUP BY`, subqueries, and window-style aggregation:

| # | Business Question |
|---|---|
| Q1 | Top category by revenue & profit margin |
| Q2 | Does discount level reduce average profit? |
| Q3 | Top states by profit — expansion targets |
| Q4 | Most-used payment modes |
| Q5 | Best & worst performing sub-categories |
| Q6 | Top 10 customers by total spend |
| Q7 | Cities with highest orders & avg order value |
| Q8 | Categories with above-average discount |
| Q9 | % revenue contribution per category |
| Q10 | Monthly / seasonal sales trend |

## 📈 4. Excel Analysis


Pivot-table views (Category, City, Payment Mode) for stakeholders who prefer Excel over code/SQL.

## 📊 5. Power BI Dashboard


Interactive dashboard consolidating sales, profit, discount impact, regional performance, and payment-mode distribution into a single view for business stakeholders.

> 
>

---

## 💡 Key Insights

- 📦 **Electronics dominates revenue**, contributing ~75% of total sales (₹62.6 Cr of ₹83.4 Cr) — but its ~14.05% profit margin is roughly in line with every other category, so revenue leadership doesn't translate into a profitability edge.
- 💸 **Profit margins are tightly clustered (~13.9%–14.1%) across all categories**, meaning profitability is driven more by discounting and cost structure than by category mix.
- 🌆 **Orders are evenly spread across major Indian cities** (Delhi, Chennai, Hyderabad, Visakhapatnam, Vijayawada, Pune, Mumbai, Bangalore each ~4,800–5,200 orders) — no single city dominates, pointing to a well-distributed customer base.
- 💳 **UPI is the most-used payment mode** (8,124 orders, ~20.3%), narrowly ahead of Net Banking, Debit Card, Credit Card, and Cash on Delivery — reflecting India's shift toward digital-first payments.
- 📅 Clear **month-over-month seasonality** is visible in sales trends (see EDA notebook / dashboard for peak months).

*(Figures pulled directly from the cleaned dataset — see the SQL/Excel files for the full breakdown.)*

---

## 🛠️ Tools & Technologies

| Layer | Tools |
|---|---|
| Data Cleaning & EDA | Python — `pandas`, `numpy`, `matplotlib`, `seaborn` |
| Business Queries | SQL — MySQL |
| Ad-hoc Analysis | Microsoft Excel — Pivot Tables |
| Dashboard | Power BI Desktop |

## 🚀 How to Use

1. **Clone the repo**
   ```bash
   git clone <your-repo-url>
   cd <your-repo-name>
   ```
2. Run `ecommerce_cleaning_code.ipynb` first to generate the cleaned dataset
3. Run `EDA_Ecommerce_Project.ipynb` for exploratory analysis and charts
4. Load the cleaned data into MySQL and run `ecommerce_cleaned_project.sql` to reproduce the business-question queries
5. Open `ecommerce_dashboard.pbix` in **Power BI Desktop** to explore the interactive dashboard

---

## 🙋 About This Project

Built as an end-to-end data analytics case study — covering the full pipeline from raw data to a stakeholder-ready dashboard. Feedback and suggestions are welcome — feel free to fork, explore, and reach out!

⭐ **If you found this useful, consider starring the repo!**
