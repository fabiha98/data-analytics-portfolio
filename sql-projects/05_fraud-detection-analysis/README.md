# Fraud & Anomaly Detection (SQL)

## 🧩 Business Problem
Financial transactions can be vulnerable to fraud.
The business needs to identify suspicious behavior
early to minimize financial loss.

## 📁 Dataset Description
Transaction-level customer payment data.

**Data Source**
- `dataset/transactions.csv`

**Key Fields**
- customer_id
- transaction_date
- amount
- payment_method

**Data Model**
- One customer → many transactions
- Explained in `dataset/ER_diagram.md`

## 🎯 Objectives
- Detect unusual transaction behavior
- Flag high-risk customers
- Support fraud investigation teams

## 🛢️ SQL Techniques Used
- Aggregations
- CTEs
- Joins
- Threshold-based anomaly detection

## 🔍 Key Insights
- Some customers perform multiple high-value transactions in one day
- Transaction spikes significantly above normal behavior
- Repeat patterns indicate potential fraud risk

## 💡 Business Recommendations
- Flag high-frequency, high-value transactions for review
- Introduce transaction limits or alerts
- Combine rules with machine learning models in future

