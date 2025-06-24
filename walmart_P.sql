#Total Sales by Store:
SELECT Store, SUM(Weekly_Sales) AS Total_Sales
FROM walmart_sales
GROUP BY Store
ORDER BY Total_Sales DESC;

#Average Weekly Sales During Holidays vs Non-Holidays
SELECT Holiday_Flag, AVG(Weekly_Sales) AS Avg_Sales
FROM walmart_sales
GROUP BY Holiday_Flag;

#Top 5 Sales Weeks:
SELECT Date, Weekly_Sales
FROM walmart_sales
ORDER BY Weekly_Sales DESC
LIMIT 5;

#Average Temperature and Fuel Price per Store
SELECT Store, AVG(Temperature) AS Avg_Temp, AVG(Fuel_Price) AS Avg_Fuel
FROM walmart_sales
GROUP BY Store;

#Weekly Sales Trend for a Particular Store
SELECT Date, Weekly_Sales
FROM walmart_sales
WHERE Store = 1
ORDER BY Date;

#Use ORDER BY column_name DESC for sorting
SELECT *
FROM walmart_sales
ORDER BY Weekly_Sales DESC
LIMIT 10;

SELECT *
FROM walmart_sales
ORDER BY Date DESC;

SELECT Date, Store, Weekly_Sales
FROM walmart_sales
WHERE Holiday_Flag = 1
ORDER BY Weekly_Sales DESC;
