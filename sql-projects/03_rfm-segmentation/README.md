# RFM Segmentation (SQL)

## 🧩 Business Problem
Marketing teams treat all customers the same,
leading to inefficient campaigns and low ROI.

## 📁 Dataset Description
Transactional purchase data used to calculate
customer-level RFM metrics.

**Data Source**
- `dataset/customer_purchases.csv`

**Key Fields**
- customer_id
- order_date
- order_value

**Data Model**
- One customer → many purchases
- ER explanation available in `dataset/ER_diagram.md`

## 🎯 Objectives
- Identify high-value and low-value customers
- Segment customers based on behavior
- Support targeted marketing strategies

## 🛢️ SQL Techniques Used
- Aggregations
- Date Calculations
- Window Functions (NTILE)
- CTEs

## 🔍 Key Insights
- Small group of customers have very high RFM scores
- High monetary customers are not always frequent buyers
- Recent buyers show higher engagement potential

## 💡 Business Recommendations
- Reward high RFM customers with loyalty programs
- Re-engage low recency customers with win-back offers
- Avoid heavy discounts for low-value segments
