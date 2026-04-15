## Project Description

This project focuses on building a comprehensive **Business Data Warehouse** named **BusinessDW** using **SQL Server**, following the industry-standard **Medallion Architecture (Bronze, Silver, Gold)** approach. The main objective of the project is to integrate data from multiple enterprise source systems, apply business logic, and transform raw datasets into structured, analytics-ready information for business decision-making.

The data warehouse ingests data from two primary source systems: **ERP (Enterprise Resource Planning)** and **CRM (Customer Relationship Management)**. Data from both systems was extracted and provided in **CSV file format**, simulating real-world batch data ingestion scenarios.

The CRM source system contains three datasets:

* **cust_info.csv** — customer master information
* **prd_info.csv** — product details
* **sales_details.csv** — transactional sales data representing customer orders

The ERP source system includes:

* **cust_az12.csv** — customer demographic data such as birth date and gender
* **loc_a101.csv** — customer geographic information including country mapping linked through customer ID
* **px_cat_g1v2.csv** — product classification data including category, subcategory, maintenance indicator, and product line (e.g., road, mountain, bike-related classifications)

The project implements a layered transformation process:

* **Bronze Layer** stores raw data exactly as received from source systems to maintain traceability and auditability.
* **Silver Layer** performs data cleaning, standardization, integration, and application of business rules to improve data quality and consistency.
* **Gold Layer** produces business-ready datasets optimized for analytics, reporting, and downstream consumption, typically structured using dimensional modeling concepts.

This project demonstrates practical data engineering capabilities including multi-source data integration, ETL pipeline development, business logic implementation, and modern data warehouse design principles. It simulates a real-world enterprise scenario where operational data is transformed into strategic insights to support business intelligence and decision-making processes.

---
👤 Author

Ritik
Aspiring Data Engineer / Data Scientist
Focused on building production-grade data systems.

⭐ Conclusion

This project represents a complete end-to-end implementation of a business data warehouse, starting from raw data ingestion to business-ready analytical datasets using industry best practices.
