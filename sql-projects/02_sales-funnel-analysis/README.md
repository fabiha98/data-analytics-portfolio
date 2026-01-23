# Sales Funnel Analysis (SQL)

## 🧩 Business Problem
Sales leadership wants to understand where potential deals
drop off in the sales funnel and how efficiently leads convert.

## 📁 Dataset Description
CRM-style funnel dataset capturing lead progression across stages.

**Data Source**
- `dataset/sales_funnel_data.csv`

**Stages**
- Lead
- Qualified
- Proposal
- Closed Won / Closed Lost

**Data Model**
- One lead → multiple stage records
- Funnel logic explained in `dataset/ER_diagram.md`

## 🎯 Objectives
- Calculate stage-wise conversion rates
- Identify funnel drop-offs
- Assess sales effectiveness

## 🛢️ SQL Techniques Used
- CTEs
- Window Functions (LAG)
- Conditional Ordering
- Aggregations

## 🔍 Key Insights
- Major drop-off occurs between Qualified and Proposal stages
- Very few leads reach the Proposal stage
- Closed Won deals represent a small fraction of total leads

## 💡 Business Recommendations
- Improve lead qualification criteria
- Enable sales reps with better proposal tools
- Focus training on mid-funnel conversion
