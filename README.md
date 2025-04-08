# 🚀 AdventureWorks Data Engineering Project on Azure

This project is a practice **Data Engineering practice pipeline** built using Microsoft Azure services and the **AdventureWorks** dataset. It simulates a real-world enterprise data flow, leveraging modern data engineering principles such as the **Medallion Architecture (Bronze, Silver, Gold)** and distributed data processing with **PySpark**.

---

## 🧰 Key Features

- **Data Source:**
  - Extracted data from an **on-premises Microsoft SQL Server (msSQL)** database using **Azure Data Factory** with an integration runtime gateway for secure access.

- **ETL Pipeline:**
  - **Extract:** Data ingested via ADF pipelines from multiple AdventureWorks tables.
  - **Transform:** Cleaned and transformed using **Azure Databricks (PySpark)** with partitioning and schema enforcement.
  - **Load:** Loaded into **Azure Data Lake Storage (ADLS Gen2)** and modeled in **Azure Synapse Analytics**.

- **Medallion Architecture:**
  - **Bronze Layer:** Raw ingested data from source.
  - **Silver Layer:** Cleaned and joined business-level data.
  - **Gold Layer:** Aggregated and analytics-ready data for reporting.

- **Data Modeling & Access:**
  - Created **external tables and views** in Synapse Analytics.
  - Ready for downstream reporting tools like **Power BI**.

---

## 🛠️ Tech Stack

- Azure Data Factory  
- Azure Databricks (PySpark)  
- Azure Synapse Analytics  
- Azure Data Lake Storage Gen2  
- Microsoft SQL Server  
- Medallion Architecture  
- Power BI (Optional)

---

## 🎯 Objective

The goal of this project is to simulate an enterprise-grade, cloud-based data pipeline using Azure, demonstrating a deep understanding of ETL, distributed data processing, and data modeling best practices.

---

## 📚 What I Learned

- Building scalable and modular ETL pipelines using cloud-native tools.
- Working with large datasets and distributed computing using PySpark.
- Structuring data with the Medallion architecture for clarity and performance.
- Modeling and querying data efficiently in Azure Synapse.
