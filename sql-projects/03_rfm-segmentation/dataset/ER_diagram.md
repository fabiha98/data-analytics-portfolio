# Entity Relationship – RFM Segmentation

## 📌 Overview
This dataset represents customer purchase transactions
used to calculate Recency, Frequency, and Monetary values.

---

## 🧱 Entity

### Transactions
Each row represents a completed purchase.

**Primary Identifier**
- customer_id

**Attributes**
- order_date
- order_value

---

## 🔗 Relationship
- One customer → multiple transactions
- Used to derive customer-level RFM metrics

---

## 🎯 Why This Model?
- Enables customer value scoring
- Supports segmentation for targeted marketing
- Commonly used in retail and e-commerce analytics
