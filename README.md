# 🛒 Walmart Sales Data Cleaning using Microsoft Excel

## 📌 Project Overview

This project demonstrates the process of cleaning and preparing the Walmart Sales dataset using Microsoft Excel. The primary objective was to improve data quality by checking for missing values, duplicate records, standardizing data formats, and ensuring appropriate data types before analysis.

---

## 📂 Dataset Information

- **Dataset:** Walmart Sales Dataset
- **Tool Used:** Microsoft Excel
- **Rows:** 6,435
- **Columns:** 8

### Dataset Columns

- Store
- Date
- Weekly_Sales
- Holiday_Flag
- Temperature
- Fuel_Price
- CPI
- Unemployment

---

## 🧹 Data Cleaning Operations

### ✅ Missing Value Handling

- Checked the entire dataset for missing values.
- No missing values were found.

---

### ✅ Duplicate Records

- Verified duplicate rows using Excel's **Remove Duplicates** feature.
- No duplicate records were found.

---

### ✅ Data Standardization

Performed the following standardization steps:

- Converted **Date** column into Date format (`dd-mm-yyyy`).
- Converted **Holiday_Flag** values from **0/1** to **Yes/No**.
- Standardized **Temperature**, **Fuel_Price**, **CPI**, and **Unemployment** to **2 decimal places**.
- Formatted **Weekly_Sales** using the **Accounting** format.

---

### ✅ Data Type Formatting

| Column | Data Type |
|----------|------------|
| Store | Whole Number |
| Date | Date |
| Weekly_Sales | Accounting |
| Holiday_Flag | Text (Yes/No) |
| Temperature | Decimal (2 Decimal Places) |
| Fuel_Price | Decimal (2 Decimal Places) |
| CPI | Decimal (2 Decimal Places) |
| Unemployment | Decimal (2 Decimal Places) |

---

## 📊 Outcome

After the cleaning process:

- ✔ No missing values
- ✔ No duplicate records
- ✔ Standardized date and numeric formats
- ✔ Improved readability of categorical values
- ✔ Dataset ready for analysis and visualization

---

## 🛠 Tools Used

- Microsoft Excel
- Excel Formatting
- Remove Duplicates
- Data Validation
- Number Formatting

---
---

# 📊 Power BI Dashboard

After cleaning the dataset in Microsoft Excel, the cleaned data was imported into Microsoft Power BI to create an interactive sales dashboard.

The dashboard includes:

- KPI Cards (Total Sales, Average Sales, Maximum Sales, Total Stores)
- Monthly Sales Trend
- Sales by Store
- Holiday vs Non-Holiday Sales
- Temperature vs Weekly Sales
- Fuel Price vs Weekly Sales
- Unemployment vs Weekly Sales
- Interactive Slicers (Store, Month, Holiday Flag)

---

## 📈 Business Insights

- Sales varied significantly across Walmart stores.
- Holiday periods influenced customer purchasing behavior.
- Seasonal trends were observed in monthly sales.
- Fuel price and temperature showed only a weak relationship with weekly sales.
- The dashboard enables users to interactively filter data and gain business insights.


