-- Total Sales, Boxes, Shipments, Profit, Profit %
SELECT
    SUM(shipments.Sales) AS total_sales,
    SUM(shipments.Boxes) AS total_boxes,
    COUNT(*) AS total_shipments,
    SUM(shipments.Sales - shipments.Costs) AS total_profit,
    ROUND(SUM(shipments.Sales - shipments.Costs) * 100.0 / SUM(shipments.Sales), 2) AS profit_percentage
FROM shipments;

-- Monthly Sales, Boxes, and Cost
SELECT
    calendar.Start_of_Month AS month_start,
    SUM(shipments.Sales) AS monthly_sales,
   SUM(shipments.Boxes) AS monthly_boxes,
    SUM(shipments.Costs) AS monthly_cost
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY month_start;

-- Monthly Shipment Count
SELECT
    calendar.Start_of_Month AS shipment_month,
    COUNT(*) AS shipment_count
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY shipment_month Desc;



-- Regional Performance
SELECT
    locations.Region,
    locations.Geo,
    SUM(shipments.Sales) AS total_sales,
    SUM(shipments.Sales - shipments.Costs) AS total_profit,
    ROUND(SUM(shipments.Sales - shipments.Costs) * 100.0 / SUM(shipments.Sales), 2) AS profit_percentage
FROM shipments
JOIN locations ON shipments.Geography = locations.Geo
GROUP BY locations.Region, locations.Geo;

-- Profitability by Product and Category
SELECT
    products.Category,
    shipments.Product,
    products.Cost_per_box,
    SUM(shipments.Sales) AS total_sales,
    SUM(shipments.Sales - shipments.Costs) AS total_profit,
    ROUND(SUM(shipments.Sales - shipments.Costs) * 100.0 / SUM(shipments.Sales), 2) AS profit_margin
FROM shipments
JOIN products ON shipments.Product = products.Product
GROUP BY products.Category, shipments.Product, products.Cost_per_box
ORDER BY total_profit DESC;

-- Sales and Profit by Sales Person
SELECT
    people.Sales_person,
    people.Team,
    SUM(shipments.Sales) AS total_sales,
    SUM(shipments.Sales - shipments.Costs) AS total_profit,
    ROUND(SUM(shipments.Sales - shipments.Costs) * 100.0 / SUM(shipments.Sales), 2) AS profit_percentage
FROM shipments
JOIN people ON shipments.Sales_person = people.Sales_person
GROUP BY people.Sales_person, people.Team
ORDER BY profit_percentage  DESC;

-- Monthly Shipment Count
SELECT
    calendar.Start_of_Month AS shipment_month,
    COUNT(*) AS shipment_count
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY shipment_month;



-- Profitability at individual Product level
SELECT
    shipments.Product,
    SUM(shipments.Sales) AS total_sales,
    SUM(shipments.Costs) AS total_cost,
    SUM(shipments.Sales - shipments.Costs) AS total_profit,
    ROUND(SUM(shipments.Sales - shipments.Costs) * 100.0 / SUM(shipments.Sales), 2) AS profit_margin
FROM shipments
GROUP BY shipments.Product
ORDER BY total_profit DESC;

--Highest profit
SELECT
    calendar.Start_of_Month AS month_start,
    SUM(shipments.Sales - shipments.Costs) AS total_profit
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY total_profit DESC;

-- highest sales Month
SELECT
    calendar.Start_of_Month AS month_start,
    SUM(shipments.Sales) AS total_sales
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY total_sales DESC;
--Highest Boxes Month
SELECT
    calendar.Start_of_Month AS month_start,
    SUM(shipments.Boxes) AS total_boxes
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY total_boxes DESC;
--Highest Shipment Month
SELECT
    calendar.Start_of_Month AS month_start,
    COUNT(*) AS total_shipments
FROM shipments
JOIN calendar ON shipments.Date = calendar.Date
GROUP BY calendar.Start_of_Month
ORDER BY total_shipments DESC





