# Entity Relationship (ER) Explanation – Customer Churn Analysis

## 📌 Overview
This project uses a simplified transactional data model
to analyze customer churn behavior.

---

## 🧱 Entities

### 1️⃣ Customers
Represents unique customers.

**Primary Key**
- customer_id

**Attributes**
- signup_date

---

### 2️⃣ Transactions
Represents individual purchase events.

**Foreign Key**
- customer_id

**Attributes**
- transaction_date
- revenue

---

## 🔗 Relationship
- One customer can have **multiple transactions**
- Relationship type: **One-to-Many**
  (Customers → Transactions)

---

## 🎯 Why This Model?
- Enables churn analysis based on inactivity
- Supports purchase frequency calculations
- Allows cohort and retention analysis

This structure mirrors real-world analytical datasets
commonly used in customer analytics.
