
select * from superstore_db;

#Order volume and date range validated to ensure data reliability;
SELECT COUNT(*) AS total_rows FROM superstore_orders;

SELECT MIN(Order_Date), MAX(Order_Date)
FROM superstore_orders;

#Overall revenue, profit, and margin establish baseline business health;
SELECT
    round(SUM(Sales),2) AS total_sales,
   round( SUM(Profit),2) AS total_profit,
    round(SUM(Profit)/ SUM(Sales),2) AS profit_margin
FROM superstore_db;

#Profitability varies significantly across categories, indicating structural margin differences”.
SELECT
    Category,
    SUM(Sales),
    SUM(Profit),
    SUM(Profit) / SUM(Sales) AS profit_margin
FROM superstore_db
GROUP BY Category
ORDER BY SUM(Profit);
#Higher discount levels correlate with sharp profit erosion despite strong sales.
SELECT
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount <= 0.20 THEN 'Low Discount'
        WHEN Discount <= 0.40 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_band,
    SUM(Sales),
    SUM(Profit)
FROM superstore_db
GROUP BY discount_band
ORDER BY SUM(Profit);

#Several high-revenue sub-categories are consistently loss-making, indicating pricing inefficiency.
SELECT
    Sub-Category,
    SUM(Sales),
    SUM(Profit)
FROM superstore_db
GROUP BY Sub-Category
HAVING SUM(Sales) > (SELECT AVG(Sales) FROM superstore_db)
AND SUM(Profit) < 0
ORDER BY SUM(Profit);

#A significant share of total orders are unprofitable, highlighting systemic margin issues.
SELECT
    COUNT(CASE WHEN Profit < 0 THEN 1 END) * 1.0 / COUNT(*) 
    AS loss_order_percentage
FROM superstore_db;
#Substantial revenue is generated from loss-making orders, representing direct profit leakage.
SELECT
   round( SUM(Sales),2) AS revenue_at_risk
FROM superstore_db
WHERE Profit < 0;

#Profit contribution varies by region, suggesting uneven pricing or cost effectiveness.
SELECT
    Region,
    SUM(Sales),
    SUM(Profit)
FROM superstore_db
GROUP BY Region
ORDER BY SUM(Profit);
#Customer segments contribute unevenly to profit, despite similar revenue levels.
SELECT
    Segment,
    SUM(Sales),
    SUM(Profit)
FROM superstore_db
GROUP BY Segment
ORDER BY SUM(Profit);

#A small set of products drives disproportionate losses and should be prioritized for pricing review.
SELECT
    Product_Name,
    SUM(Sales),
    SUM(Profit),
    AVG(Discount)
FROM superstore_db
WHERE Profit < 0
GROUP BY Product_Name
ORDER BY SUM(Profit)
LIMIT 10;








