# 📓 Databricks Notebook Reference

This markdown file explains how to use and navigate the Databricks notebook associated with the **EV Charging Station Usage Analysis** project.

---

## 🔍 Notebook Overview

The notebook contains three SQL cells that analyze EV charging patterns from the `VEHICLES.CHARGING_SESSIONS` table in Azure Databricks.

### 🧾 Dataset Schema

**Table:** `VEHICLES.CHARGING_SESSIONS`  
**Columns:**

| Column              | Description                                             | Type      |
|---------------------|---------------------------------------------------------|-----------|
| `garage_id`         | Identifier for the garage/building                     | STRING    |
| `user_id`           | Identifier for the individual user                     | STRING    |
| `user_type`         | Shared or Private station usage                        | STRING    |
| `start_plugin`      | DateTime the charging session began                    | TIMESTAMP |
| `start_plugin_hour` | Hour (24h format) the session started                  | NUMERIC   |
| `end_plugout`       | DateTime the session ended                             | TIMESTAMP |
| `end_plugout_hour`  | Hour (24h format) the session ended                    | NUMERIC   |
| `duration_hours`    | Duration of the session in hours                       | NUMERIC   |
| `el_kwh`            | Electricity used in kilowatt-hours                     | NUMERIC   |
| `month_plugin`      | Month the session started                              | STRING    |
| `weekdays_plugin`   | Day of the week the session started                    | STRING    |

---

## ✅ Required Queries

### 1. `unique_users_per_garage`

**Goal:** Find the number of unique users who use shared charging stations per garage.

```sql
SELECT garage_id, COUNT(DISTINCT user_id) AS num_unique_users
FROM VEHICLES.CHARGING_SESSIONS
WHERE user_type = 'Shared'
GROUP BY garage_id
ORDER BY num_unique_users DESC;
