# SQL Data Warehouse Project

This project demonstrates a full-life-cycle data warehousing solution using Microsoft SQL Server, covering the steps from raw data ingestion through to analytics-ready fact and dimension tables. The data sources used are CSV extracts from ERP and CRM systems.

---

## Project Requirements
### Building the Data Warehouse (Data Engineering)
#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Clean and resolve data quality issues before analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historisation of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---
## Project Overview
This project involves:

1. **Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

---
## Architecture & Data Flow

The architecture follows a **“medallion”** or layered approach with three primary zones:
**Bronze**: Raw ingestion of CSV files (ERP & CRM).
**Silver**: Cleaned and transformed staging data.
**Gold**: Final fact and dimension tables ready for analytics.

### Flow summary:
- Extract CSV files from source systems.
- Load into Bronze layer tables via ETL scripts.
- Clean, deduplicate and transform data in Silver layer.
- Model and load fact and dimension tables in Gold layer.
- Run SQL-based analytics queries/reports on the Gold layer.

---

### BI: Analytics & Reporting (Data Analysis)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.  

For more details, refer to [docs/requirements.md](docs/requirements.md).

## Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
└── LICENSE                             # License information for the repository
```
---
## Future Enhancements
Introduce historisation (i.e., slowly changing dimensions) to allow full history tracking rather than only “latest dataset”.
Automate ETL orchestration (e.g., with a scheduler or workflow tool).
Expand to cloud or hybrid architecture (e.g., Azure SQL Data Warehouse or AWS Redshift).
Add interactive dashboards (e.g., Power BI / Tableau) for richer visual analytics.
Implement more advanced analytics (e.g., predictive modelling, customer churn, basket analysis).
