# 🚗 EV Charging Station Usage Analysis

This SQL-based project analyzes electric vehicle (EV) charging session data from apartment garages. It is designed to help building managers understand shared charging station demand and user behavior.

---

## 📦 Dataset Info

- Table: `VEHICLES.CHARGING_SESSIONS`
- Source: [Kaggle – EV Charging Data](https://www.kaggle.com/)
- Format: Azure Databricks SQL

---

## 🧠 Queries

1. **unique_users_per_garage.sql**
   > Number of unique users per garage using shared stations.

2. **most_popular_shared_start_times.sql**
   > Top 10 most frequent shared session start times by weekday and hour.

3. **long_duration_shared_users.sql**
   > Users whose average shared charging session lasts over 10 hours.

---

## 🛠️ How to Run

1. Use Databricks SQL workspace.
2. Run queries using:
   ```sql
   FROM VEHICLES.CHARGING_SESSIONS
