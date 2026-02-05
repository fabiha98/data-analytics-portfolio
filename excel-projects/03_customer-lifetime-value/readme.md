# 📊 Customer Lifetime Value (CLV) Analysis  
### Power Query + Excel Analytics + VBA Automation

---

## 🧩 Business Problem
Most organizations focus on short-term revenue without understanding the
**long-term value of their customers**. Treating all customers equally leads to
inefficient marketing spend and poor retention strategies.

This project addresses the problem by:
- Calculating **Customer Lifetime Value (CLV)**
- Segmenting customers into **High, Medium, and Low value**
- Automatically generating **executive-ready insights** using VBA

---

## 📂 Project Architecture
This project follows a **real-world analytics workflow**:

Raw CSV Data
↓
Power Query (ETL & CLV calculations)
↓
Excel Analytics & Pivot Tables
↓
VBA Automated Insights (Executive Output)

---

## 📊 Dataset Description
**Source:** CSV file  
**File:** `customer_transactions_100_rows.csv`

### Data Fields
- Customer_ID
- Customer_Name
- Order_ID
- Order_Date
- Revenue

The dataset contains **100+ transaction-level records** across multiple customers,
making it suitable for realistic customer analytics.

---

## 🛠️ Tools & Technologies Used
- **Power Query**
  - Data ingestion from CSV
  - Data cleaning and transformation
  - Customer-level aggregation
  - CLV calculation logic
- **Excel Analytics**
  - Pivot tables
  - CLV segmentation
  - Trend and distribution analysis
- **VBA (Macros)**
  - Automated insight generation
  - Executive-style formatting
  - Timestamped outputs

---

## 🔄 Power Query Logic (ETL)
Power Query performs the following steps:

1. Loads raw transaction data from CSV
2. Cleans text fields (Trim & Clean)
3. Converts data types
4. Aggregates transactions to customer level
5. Calculates:
   - Total Revenue
   - Order Count
   - First & Last Purchase
   - Customer Tenure (Months)
   - Average Order Value (AOV)
   - Purchase Frequency
   - Customer Lifespan (Years)
   - **Customer Lifetime Value (CLV)**
6. Segments customers into:
   - High CLV
   - Medium CLV
   - Low CLV

The output is a **pivot-ready analytical table**.

---

## 🧮 CLV Formula
CLV = Average Order Value × Purchase Frequency × Customer Lifespan

---

## 📊 Key KPIs
- Total Customer Lifetime Value
- CLV by Segment (High / Medium / Low)
- Customer Count by Segment
- Top Customers by CLV
- Revenue vs CLV comparison

---

## ⚙️ VBA Automation – Insight Generator
A VBA macro is used to:
- Read CLV and segmentation results
- Calculate contribution of High, Medium, and Low CLV segments
- Generate **formatted executive insights**
- Add a **timestamp** to track when insights were generated

This transforms the Excel file from a static report into a **decision-support tool**.

---

## 📌 Sample Business Insights
- A small percentage of customers contribute the majority of lifetime value
- High revenue does not always mean high CLV
- Medium CLV customers present strong upsell opportunities
- Low CLV customers require cost-controlled engagement

---

## 💡 Business Recommendations
- Focus retention and loyalty programs on **High CLV customers**
- Upsell and cross-sell to **Medium CLV customers**
- Optimize marketing and servicing costs for **Low CLV customers**
- Use CLV as a core KPI for long-term growth decisions

---

## 🎯 Outcome
This project demonstrates how **Excel can be used as a full analytics platform**
by combining:
- Power Query for ETL
- Excel for analytics
- VBA for automation and insights

It closely mirrors how customer analytics is performed in real business environments.

---
