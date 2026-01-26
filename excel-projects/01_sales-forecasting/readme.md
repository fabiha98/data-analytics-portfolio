# 📈 Advanced Sales Forecasting Model (Excel)

## 🧩 Business Problem
Sales leadership needs an accurate and flexible sales forecast to support:
- Inventory planning
- Marketing budget allocation
- Regional and channel-level decision making

However, historical sales data comes from multiple sources and contains inconsistencies, making reliable forecasting challenging.

---

## 📊 Dataset Overview
The model uses historical transactional sales data with the following attributes:
- Order ID
- Order Date
- Product Code
- Region
- Sales Channel (Online / Offline)
- Sales Amount

Additional master data tables are used for:
- Product details (category, margin)
- Region-to-manager mapping

The raw data intentionally contains quality issues (inconsistent text cases, missing derived fields) to simulate real-world business data.

---

## 🛠️ Data Preparation & Transformation
Data cleaning and enrichment were performed using **Excel formulas and Power Query concepts**, including:
- Text standardization using `TRIM`, `PROPER`, `UPPER`
- Creation of derived fields such as Month
- Product and margin enrichment using lookup tables

---

## 🧮 Excel Techniques & Features Used

### 🔹 Advanced Formulas
- `XLOOKUP`, `VLOOKUP`
- `SUMIFS`, `COUNTIF`, `AVERAGEIFS`
- `SUBTOTAL`, `AGGREGATE`
- `OFFSET`, `INDIRECT`
- Text cleanup functions (`TRIM`, `PROPER`, `TEXT`)

### 🔹 Analytical Components
- Monthly sales aggregation
- Growth rate calculations
- Trend-based forecasting
- Scenario analysis (Worst / Base / Best case)

### 🔹 Excel Modeling Best Practices
- Separate raw, cleaned, and analytical layers
- Scenario-driven forecasting logic
- Business-readable insights sheet

---

## 📈 Forecasting Approach
The forecast is built using:
- Historical monthly averages
- Month-over-month growth trends
- Rolling averages for smoothing volatility

Three scenarios are modeled:
- **Worst case:** Demand contraction
- **Base case:** Historical growth continuation
- **Best case:** Accelerated growth

---

## 🔑 Key Business Insights
- Sales exhibit strong seasonality with higher demand in later months
- Online channels show faster growth compared to offline
- Certain regions contribute a disproportionate share of revenue
- Best-case scenarios require proactive inventory planning

---

## 💡 Business Recommendations
- Increase inventory ahead of forecasted peak demand periods
- Allocate higher marketing spend toward high-growth channels
- Use scenario forecasts to prepare contingency plans
- Monitor regional performance to optimize resource allocation

---

## 📁 File Structure

