# Revenue Growth Analysis (SQL)

## 🧩 Business Problem
Leadership wants to track revenue performance
and understand month-over-month growth trends.

## 📁 Dataset Description
Transactional sales data aggregated at monthly level.

**Data Source**
- `dataset/monthly_sales.csv`

**Key Fields**
- order_date
- revenue

**Data Model**
- One row per order
- Time-series aggregation explained in `dataset/ER_diagram.md`

## 🎯 Objectives
- Calculate monthly revenue
- Analyze Month-over-Month (MoM) growth
- Identify growth trends and slowdowns

## 🛢️ SQL Techniques Used
- Date Functions
- Aggregations
- Window Functions (LAG)
- CTEs

## 🔍 Key Insights
- Revenue shows consistent upward trend
- Some months have slower growth
- Growth accelerates in later months

## 💡 Business Recommendations
- Investigate drivers of high-growth months
- Plan marketing around strong periods
- Monitor early signs of slowdown

