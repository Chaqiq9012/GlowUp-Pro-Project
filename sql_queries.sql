LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GlowUpPro_Dataset.csv'
INTO TABLE glowuppro
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

TRUNCATE v99glowuppro;

ALTER TABLE project.v99glowuppro 
RENAME TO glowuppro;

-- Pinpointing the Conversion Leak (By Channel) :
SELECT 
    TrafficSource,
    COUNT(*) AS Total_Sessions,
    SUM(Converted) AS Total_Sales,
    ROUND(CAST(SUM(Converted) AS FLOAT) / COUNT(*) * 100, 2) AS Conversion_Rate_Pct,
    SUM(MarketingCost) AS Total_Spend
FROM glowuppro
GROUP BY TrafficSource
ORDER BY Conversion_Rate_Pct ASC;

-- The "Delivery Lag" Impact
SELECT 
    Region,
    AVG(DeliveryTime) AS Avg_Delivery_Days,
    ROUND(AVG(CAST(Converted AS FLOAT)) * 100, 2) AS Conversion_Rate
FROM glowuppro
GROUP BY Region
ORDER BY Avg_Delivery_Days DESC;

-- Marketing Efficiency (ROAS) Drain
SELECT 
    TrafficSource,
    SUM(ProductPrice * Quantity * Converted) AS Total_Revenue,
    SUM(MarketingCost) AS Total_Marketing_Spend,
    ROUND(SUM(ProductPrice * Quantity * Converted) / NULLIF(SUM(MarketingCost), 0), 2) AS ROAS
FROM glowuppro
GROUP BY TrafficSource
HAVING SUM(MarketingCost) > 0
ORDER BY ROAS ASC;

-- Demographic Disconnect
SELECT 
    ProductCategory,
    Gender,
    CASE 
        WHEN Age < 25 THEN 'Gen Z'
        WHEN Age BETWEEN 25 AND 40 THEN 'Millennial'
        ELSE 'Gen X/Boomer' 
    END AS Age_Group,
    ROUND(AVG(CAST(Converted AS FLOAT)) * 100, 2) AS Conversion_Rate
FROM glowuppro
GROUP BY ProductCategory, Gender, Age_Group
ORDER BY Conversion_Rate ASC
LIMIT 10;

-- Daily Conversion Trend (The "Pulse" Check)
SELECT 
    OrderDate,
    COUNT(*) AS Total_Visitors,
    SUM(Converted) AS Sales,
    ROUND(CAST(SUM(Converted) AS FLOAT) / COUNT(*) * 100, 2) AS Daily_CR
FROM glowuppro
GROUP BY OrderDate
ORDER BY OrderDate DESC;
