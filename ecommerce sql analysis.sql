create database ecommerce_project;
use ecommerce_project;
RENAME TABLE `ecommerce cleaned` TO ecommerce_cleaned;
SELECT * FROM ecommerce_cleaned;
DESCRIBE ecommerce_cleaned;
SELECT COUNT(*) FROM ecommerce_cleaned;
SHOW TABLES;
RENAME TABLE `ecommerce cleaned` TO ecommerce_cleaned;
SELECT COUNT(*) FROM ecommerce_cleaned; 
SELECT COUNT(*) FROM ecommerce_cleaned WHERE Order_Date = '' OR Order_Date IS NULL;


-- Q1. Which category generates the most revenue, and does it also give the best profit?
SELECT Category,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent
FROM ecommerce_cleaned GROUP BY Category ORDER BY Total_Sales DESC;

-- Q2. Does giving more discount actually reduce profit?
SELECT Discount,AVG(Sales) AS Avg_Sales,AVG(Profit) AS Avg_Profit,COUNT(Order_ID) AS Orders
FROM ecommerce_cleaned GROUP BY Discount ORDER BY Discount;

-- Q3. Which state generates the most profit, and where should the business focus expansion?
SELECT State,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,COUNT(Order_ID) AS Orders
FROM ecommerce_cleaned GROUP BY State ORDER BY Total_Profit DESC;

-- Q4. Which payment mode do customers use the most?
SELECT Payment_Mode,COUNT(Order_ID) AS Total_Orders,ROUND(COUNT(Order_ID) * 100.0 / (SELECT COUNT(*) FROM ecommerce_cleaned), 2) AS Percentage
FROM ecommerce_cleaned GROUP BY Payment_Mode ORDER BY Total_Orders DESC;

-- Q5. Which sub-categories are the best and worst performers?
SELECT Sub_Category,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent
FROM ecommerce_cleaned GROUP BY Sub_Category ORDER BY Total_Profit ASC;

-- Q6. Who are the top 10 customers by total spending?
SELECT Customer_ID,SUM(Sales) AS Total_Spent,COUNT(Order_ID) AS Total_Orders
FROM ecommerce_cleaned GROUP BY Customer_ID ORDER BY Total_Spent DESC LIMIT 10;

-- Q7. Which city has the highest number of orders and highest average order value?
SELECT City,COUNT(Order_ID) AS Total_Orders,ROUND(AVG(Sales), 2) AS Avg_Order_Value
FROM ecommerce_cleaned GROUP BY City ORDER BY Total_Orders DESC;

-- Q8. Which categories have an average discount above the overall average?
SELECT Category,ROUND(AVG(Discount), 2) AS Avg_Discount FROM ecommerce_cleaned GROUP BY Category
HAVING AVG(Discount) > (SELECT AVG(Discount) FROM ecommerce_cleaned) ORDER BY Avg_Discount DESC;

-- Q9. What percentage of total revenue does each category contribute?
SELECT Category,SUM(Sales) AS Category_Sales,
ROUND(SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM ecommerce_cleaned), 2) AS Percent_Contribution
FROM ecommerce_cleaned GROUP BY Category ORDER BY Percent_Contribution DESC;

-- Q10. In which months are sales highest — any seasonal pattern?
SELECT MONTHNAME(STR_TO_DATE(Order_Date, '%d/%m/%Y')) AS Month, SUM(Sales) AS Total_Sales FROM ecommerce_cleaned
GROUP BY MONTHNAME(STR_TO_DATE(Order_Date, '%d/%m/%Y')), MONTH(STR_TO_DATE(Order_Date, '%d/%m/%Y'))
ORDER BY MONTH(STR_TO_DATE(Order_Date, '%d/%m/%Y'));