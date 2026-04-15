-- Total Sales
SELECT SUM("Sales") AS Total_Sales FROM "Superstore";

-- Average Sales
SELECT AVG("Sales") AS Avg_Sales FROM "Superstore";

-- Sales by Region
SELECT "Region", SUM("Sales") AS Total_Sales
FROM "Superstore"
GROUP BY "Region"
ORDER BY Total_Sales DESC;

-- Top 5 Customers
SELECT "Customer Name", SUM("Sales") AS Total_Sales
FROM "Superstore"
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 5;

-- Filter Example (WHERE)
SELECT *
FROM "Superstore"
WHERE "Region" = 'West';

-- HAVING Example
SELECT "Region", SUM("Sales") AS Total_Sales
FROM "Superstore"
GROUP BY "Region"
HAVING SUM("Sales") > 100000;

-- Subquery Example
SELECT *
FROM "Superstore"
WHERE "Sales" > (
    SELECT AVG("Sales") FROM "Superstore"
);

-- Create View
CREATE VIEW Sales_Summary AS
SELECT "Region", SUM("Sales") AS Total_Sales
FROM "Superstore"
GROUP BY "Region";

-- Use View
SELECT * FROM Sales_Summary;