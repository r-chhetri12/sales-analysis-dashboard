# Sales Performance Dashboard (Power Query + SQL + Power BI)

This project analyzes sales performance across regions, categories, products, salespeople, and time.  
I used **Power Query for data cleaning**, **SQL for analysis**, and **Power BI for interactive visualisation**,**DAX query for dynamic measures** including a **measure selector** to switch between monthly trends for Sales, Boxes, Shipments, Profit, and Total Cost.
##  Tools & Technologies

- **Power Query** – data cleaning & transformation.  
- **SQL** – aggregations, KPI calculations, regional & category analysis. 
- **DAX (Data Analysis Expressions)** –for dynamic measures and calculations in Power BI , measures for Sales, Profit, Profit %, Total Cost, and Measure Selector logic.  
- **Power BI** – dashboard layout, slicers, visuals, and interactions.
-   
## Project Workflow

### 1. Data Cleaning – Power Query

- Loaded raw sales data into Power BI and opened it in **Power Query Editor**.
- Performed:
  - Data type corrections (dates, numeric values, categories)
  - Removed or handled nulls and incorrect values
  - Created calculated columns where needed (e.g., Total Cost, Profit)
- Built a clean, structured model ready for analysis and visualisation.

### 2. Analysis – SQL

- Exported the cleaned data and used SQL to:
  - Calculate **total sales, total profit, total cost, total boxes, and total shipments**
  - Analyze **regional performance** (sales & profit by region)
  - Analyze **category performance** (sales & profit by product category)
  - Identify **top-performing salespeople**
  - Analyze **product-level profit margins**
  - Summarize **monthly trends** for sales, boxes, shipments, profit, and costs
  - [`Sales_insight.sql`](Sales_insight.sql)

### 3. Visualisation – Power BI

Built an interactive **Sales Dashboard** including:

- **KPI cards**:
  - Total Sales  
  - Total Profit  
  - Profit %  
  - Total Boxes  
  - Total Shipments  
  - Total Cost  

- **Measure Selector**:
  - A dynamic selector to switch the monthly trend line between:
    - **Sales**
    - **Boxes**
    - **Shipments**
    - **Profit**
    - **Total Cost**

- **Visuals**:
  - Sales & Profit by Region
  - Sales & Profit by Category
  - Sales & Profit by Salesperson
  - Top Products by Profit % (Margin)
  - Monthly trend (using measure selector) for Sales, Boxes, Shipments, Profit, and Total Cost

-**DAX query**
  - Created DAX Measures for calculation in Power BI. 

---
## Key Insights – Sales Dashboard

- **Total Sales:** $34M  
- **Total Boxes Shipped:** 2M  
- **Total Shipments:** 6k  
- **Total Profit:** $21M (profit margin **60.29%**)  
- **Total Cost:** $14M  

### Regional Performance
- **New Zealand** is the highest revenue region with **$6M in sales** and **$4M in profit**, making it a major **growth and profitability driver**.

### Category Performance
- The **Bars** category is the top-selling segment with **$17M in sales** and **$10M in profit**, contributing the most to overall revenue and margin.

### Top Salesperson
- **Marney O’Breen** is the top-performing salesperson with **$17M in sales** and **$10M in profit**, the strongest individual contribution to company profit.

### Product Performance
- **Peanut Butter Cubes** has the **highest product-level profitability** with a **66.71% profit margin**, making it a strong candidate for promotions and premium positioning.

### Time-Series Insights (Monthly Trends)
- **December** has the **highest sales, shipments, and profit**, indicating a **peak season** for business.
- **October** records the **highest number of boxes shipped**, showing a spike in volume.
- **January** shows the **highest costs**, which may be due to **season-start overheads, promotions, or logistics-related expenses**.

### Root-Cause Hint
- The combination of a **December revenue spike** and **October volume peak** suggests **strong seasonality** in demand.  
  There is an opportunity to **optimize cost and fulfillment timing**, especially around **January**, to improve overall profitability.
-[`Sales_report_1.pbix`](Sales_report_1.pbix)
---
