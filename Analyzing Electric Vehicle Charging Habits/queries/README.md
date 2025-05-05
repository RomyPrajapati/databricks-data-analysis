# Databricks SQL Projects 🚗⚡ & 🚇📊

This repository contains SQL notebooks and references used to explore two datasets hosted in Azure Databricks environments:

---

## 📌 Project 1: EV Charging Sessions Analysis

### 🔍 Objective:
Help apartment building managers understand tenant electric vehicle (EV) charging behaviors using shared and private charging data.

### 🗂 Dataset:
Located at: `VEHICLES.CHARGING_SESSIONS`

| Column             | Definition                                     |
|--------------------|-----------------------------------------------|
| garage_id          | Identifier for the garage/building            |
| user_id            | Identifier for the individual user            |
| user_type          | Shared or Private charging station            |
| start_plugin       | Timestamp when charging started               |
| start_plugin_hour  | Hour (24-hr format) when charging started     |
| end_plugout        | Timestamp when charging ended                 |
| end_plugout_hour   | Hour (24-hr format) when charging ended       |
| duration_hours     | Length of the session                         |
| el_kwh             | Electricity used in kWh                       |
| month_plugin       | Month of session start                        |
| weekdays_plugin    | Day of the week of session start              |

### 🧠 Questions Answered:
1. **Unique Users per Garage**  
2. **Top 10 Popular Charging Start Times**  
3. **Users with Average Charging Duration > 10 Hours**

---

## 📌 Project 2: Transport for London (TfL) Journey Volumes

### 🔍 Objective:
Analyze journey volumes across London transport modes to identify popular services and time periods.

### 🗂 Dataset:
Located at: `TFL.JOURNEYS`

| Column             | Definition                                     |
|--------------------|-----------------------------------------------|
| month              | Month (1 = January, etc.)                     |
| year               | Year of the data                              |
| days               | Number of days in that month                  |
| report_date        | Date of data reporting                        |
| journey_type       | Transport mode used (e.g. Underground, Bus)   |
| journeys_millions  | Total journeys in millions                    |

### 🧠 Questions Answered:
1. **Most Popular Transport Types**  
2. **Top 5 Months for Emirates Airline Usage**  
3. **5 Least Popular Years for Underground & DLR Journeys**

---

## 📁 Files

- `databricks_notebook_reference.md` – Step-by-step guide to using SQL in Azure Databricks Notebooks  
- `README.md` – Project overview (you are here!)  
- `.sql` / `.ipynb` files – SQL queries for each project

---

## 💡 Notes

- Queries must reference schema names directly: `FROM VEHICLES.CHARGING_SESSIONS` and `FROM TFL.JOURNEYS`
- Do not rename output DataFrames: `unique_users_per_garage`, `most_popular_shared_start_times`, `long_duration_shared_users`, etc.

---

## 📊 Tools Used
- Azure Databricks (SQL Workspace)
- SQL
- Markdown for documentation

---

## 🔗 Sources
- EV Data: [Kaggle - CC BY 4.0](https://www.kaggle.com/)
- TfL Data: [London Mayor’s Office](https://data.london.gov.uk/)

---

## 🙌 Contributions
Pull requests welcome! For major changes, please open an issue first to discuss what you would like to change.

---

Happy Querying! 🚀
