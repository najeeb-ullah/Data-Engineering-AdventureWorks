#📦 AdventureWorks Data Engineering Project on Azure
This project is a comprehensive Data Engineering practice pipeline built using Microsoft Azure services and the AdventureWorks dataset. It simulates a real-world enterprise data flow, leveraging modern data engineering principles such as the Medallion Architecture (Bronze, Silver, Gold) and distributed data processing with PySpark.

🚀 Key Features
Data Source:
Extracted data from an on-premises Microsoft SQL Server (msSQL) database using Azure Data Factory (ADF) with an integration runtime gateway for secure access.

ETL Pipeline:

Extract: Data extracted via ADF pipelines from various AdventureWorks tables.

Transform: Used Azure Databricks (PySpark) to clean, normalize, and join data across multiple entities.
Followed best practices like partitioning and schema enforcement.

Load: Transformed data was written into Azure Data Lake Storage (ADLS Gen2) and modeled using Azure Synapse Analytics.

Medallion Architecture Implementation:
Applied a multi-layer architecture to structure the data flow:

Bronze Layer: Raw ingested data from source systems.

Silver Layer: Cleaned and joined data with business logic.

Gold Layer: Aggregated and analytics-ready data for reporting and dashboards.

Data Modeling & Access:
Created external tables and views in Azure Synapse Analytics for efficient querying and downstream consumption by BI tools (e.g., Power BI).

🛠 Tech Stack
Azure Data Factory

Azure Databricks (PySpark)

Azure Synapse Analytics

Azure Data Lake Storage Gen2

Microsoft SQL Server

Medallion Architecture

Power BI (Optional - for visualization)

🎯 Objective
The aim of this project is to gain hands-on experience with cloud-based data engineering tools on Azure by simulating a real-world enterprise data pipeline — from extraction to transformation and analytical modeling.

📚 Learnings
Building scalable and modular ETL pipelines using cloud-native tools.

Working with large datasets and distributed computing using PySpark.

Implementing the Medallion architecture for organized and reusable data pipelines.

Designing analytical models and querying with Synapse external tables.
