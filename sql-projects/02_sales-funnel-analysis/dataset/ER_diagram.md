# Entity Relationship & Funnel Logic – Sales Funnel Analysis

## 📌 Overview
This dataset represents a sales funnel where each lead
progresses through multiple sales stages.

---

## 🧱 Entity

### Sales Funnel Events
Each row represents a stage change for a lead.

**Primary Identifier**
- lead_id

**Attributes**
- lead_date
- stage
- stage_date
- deal_value

---

## 🔗 Funnel Flow
Lead → Qualified → Proposal → Closed Won / Closed Lost

- One lead can appear multiple times (one per stage)
- Funnel analysis is performed by tracking stage progression

---

## 🎯 Why This Model?
- Enables conversion rate calculation
- Identifies stage-wise drop-offs
- Mirrors real-world CRM systems
