# 📦 Inventory Optimization Model (EOQ + Demand Variability)

## 🧩 Business Problem
Inventory management teams must balance product availability with
inventory carrying costs. Overstocking leads to high holding costs,
while understocking results in stockouts, lost sales, and poor
customer experience.

This model helps determine **optimal order quantities and reorder points**
while accounting for **demand variability and lead time uncertainty**.

---

## 📊 Dataset Overview
The model uses product-level operational data commonly available in
ERP and supply chain systems:
- Annual product demand
- Unit cost
- Ordering cost per purchase
- Holding cost percentage
- Supplier lead time
- Target service level (Z-score)

---

## 🛠️ Model Structure
The Excel model is structured into logical layers for clarity
and maintainability:

- **Raw_Product_Data:** Product demand and cost inputs
- **Inventory_Parameters:** Operational assumptions
- **EOQ_Model:** Economic Order Quantity calculations
- **Safety_Stock:** Demand variability and reorder point logic
- **Scenario_Analysis:** Demand change impact assessment
- **Insights:** Business conclusions and recommendations

---

## 🧮 Inventory Optimization Logic

### Economic Order Quantity (EOQ)
EOQ is used to minimize the total cost of ordering and holding inventory:

EOQ = √((2 × Annual Demand × Ordering Cost) / Holding Cost)

---

### Safety Stock Calculation
Safety stock is calculated to protect against demand variability during lead time:

Safety Stock = Z × σ(daily demand) × √(Lead Time)

---

### Reorder Point
The reorder point determines **when to place a new order**:

Reorder Point = (Average Daily Demand × Lead Time) + Safety Stock

---

## 📈 Scenario Analysis
The model evaluates inventory impact under multiple demand scenarios:
- **Low Demand:** Reduced order quantities and holding cost
- **Base Demand:** Current planning assumptions
- **High Demand:** Increased EOQ and higher safety stock requirements

This enables proactive inventory planning under uncertainty.

---

## 🔑 Key Insights
- EOQ significantly reduces combined ordering and holding costs
- High-demand products require larger safety stock buffers
- Longer lead times increase inventory risk
- Higher service levels require greater inventory investment

---

## 💡 Business Recommendations
- Use EOQ as the baseline for ordering decisions
- Maintain higher safety stock for fast-moving or critical products
- Review inventory parameters when demand patterns change
- Balance service levels with cost constraints

---

## 🎯 Outcome
This project demonstrates a practical Excel-based inventory optimization
solution that supports cost-efficient and reliable supply chain planning.

