![Dashboard Preview](01_retail-sales-performance/Screenshot.png)

# Power BI Sales Dashboard (DAX Modeling)

## Overview
This project demonstrates how to transform and model sales data using **DAX calculated tables and measures** in Power BI.  
A star schema was created from the raw CSV data, and key measures like Profit and Profit Margin were defined to enable dynamic, filter-aware analysis.

---

## Data Source
The dataset is sourced from Kaggle:

[Sample Sales Data](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data)

- Downloaded as CSV
- Loaded into Power BI for analysis and modeling

---

## Data Preparation
After loading the data into Power BI, the flat dataset was normalized into two tables using **DAX calculated tables**:

1. **Orders** – header table containing unique orders
2. **Details** – fact table containing order line items

This structure follows a **star schema**, enabling efficient aggregation and dynamic measures.

---

## Orders Table (DAX Calculated Table)

```DAX
Orders =
VAR BaseTable =
    SELECTCOLUMNS (
        sales_data_sample,
        "Order ID", sales_data_sample[ORDERNUMBER],
        "Order Date", DATEVALUE ( sales_data_sample[ORDERDATE] ),
        "CustomerName", sales_data_sample[CUSTOMERNAME],
        "State", sales_data_sample[STATE],
        "City", sales_data_sample[CITY]
    )
RETURN
    DISTINCT ( BaseTable )
```

## Details Table (DAX Calculated Table)
```DAX
Details =
SELECTCOLUMNS (
    sales_data_sample,
    "Order ID", sales_data_sample[ORDERNUMBER],
    "Amount", sales_data_sample[SALES],
    "Quantity", sales_data_sample[QUANTITYORDERED],
    "Category", sales_data_sample[PRODUCTLINE],
    "Sub-Category", sales_data_sample[PRODUCTCODE],
    "PaymentMode", sales_data_sample[DEALSIZE]
)
```
## Profit (DAX Calculated Measure)
```DAX
Profit :=
SUMX (
    Details,
    VAR Margin =
        0.20
            + ( 0.60 - 0.20 )
                * DIVIDE ( MOD ( Details[Order ID], 100 ), 100 )
    RETURN
        Details[Amount] * Margin
)

Profit Margin % :=
DIVIDE ( [Profit], [Total Sales] )
```
