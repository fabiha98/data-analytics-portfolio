Data source is:
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data
Once the data is collected as CSV file, Further tables (Orders and Details) are careated with help of DAX create table queries. 
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


After that Profit measure is created:
Profit = 
SUMX (
    Details,
    VAR Margin =
        0.20
            + ( 0.60 - 0.20 )
                * DIVIDE ( MOD ( Details[Order ID], 100 ), 100 )
    RETURN
        Details[Amount] * Margin
)

