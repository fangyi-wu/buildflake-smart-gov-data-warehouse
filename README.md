# BuildFlake: Smart Government SQL Data Warehouse for Urban Policy and Fiscal Optimization

> Developed a scalable urban data warehouse to modernize public infrastructure data, support fiscal recovery, and optimize policy execution for the City of Chicago.

---

## Project Overview

**Duration**: Sep 2024 – Dec 2024  
**Role**: Data Architect  
**Stack**: Python, SQL, Google Cloud Platform, MySQL Workbench, Tableau

BuildFlake integrates over **2 million civic records** (building permits, violations, service requests, public finances) into a centralized, query-optimized warehouse. The system enables high-speed data access, automated ETL, and data-informed budgeting and compliance decisions.

---

## Key Contributions

### Schema Design
- Modeled both **OLTP (normalized)** and **OLAP (denormalized)** schemas using MySQL Workbench.
- Designed a **star schema** centered on `building_fact` with six linked dimension tables and four sub-dimensions.
- Applied advanced data normalization (1NF, 2NF, 3NF) and later denormalized for BI-friendly access.

### ETL Engineering
- Engineered ETL pipelines using **Python** and **SQL** to clean, validate, and transform raw city data.
- Standardized fields and created artificial keys (e.g., `geo_id`, `permit_number`) to establish referential integrity.
- Addressed outliers, missing values, and column mismatches across 15+ raw tables.

### Cloud Deployment
- Deployed the warehouse on **Google Cloud Platform (GCP)**.
  - Scheduled SQL jobs for daily ingestion and transformation.
- Optimized query execution time from 700+ seconds to under 5 seconds.

---

## Business & Policy Impact

- **Identified $420K in unpaid permit fees** using cross-table joins and financial aggregations.
- Diagnosed **delays in inspections** and compliance processes post-COVID through historical trends.
- Mapped **311 service request surges** by time of day and geography for resource allocation.
- Produced **interactive Tableau dashboards** for real-time monitoring and strategic planning.

---

## Schema Components

| Table Name                   | Type             | Description                                                                 |
|------------------------------|------------------|-----------------------------------------------------------------------------|
| `building_fact`              | Fact Table       | Core table linking building data with address as primary identifier         |
| `building_permits`           | Dimension Table  | Building permits, types, statuses, and descriptions                         |
| `ordinance_violations`       | Dimension Table  | Violation cases, fines, and disposition info                                |
| `service_request`            | Dimension Table  | 311 requests linked by address, with timestamps and categories              |
| `build_footprints`           | Dimension Table  | Footprint geometry and construction status data                             |
| `permit_fees`, `violation_inspections`, etc. | Sub-dimensions | Metadata describing fees, geography, and violation types      |

---

## 📈 Visualizations

- Geographic heatmaps for service request density and violations.
- Temporal trends in permit issuance and inspection delays.
- Address-level dashboards (e.g., most-requested properties, peak violation zones).
- <img width="676" alt="image" src="https://github.com/user-attachments/assets/db798225-57b1-4b84-bd9c-0b8d8ef10d59" />

---

## Data Sources

- [City of Chicago Data Portal](https://data.cityofchicago.org/)
- Koordinates Building Footprints
- 311 Service Requests, Permit Records, Ordinance Violations (2006–present)

---

## 📬 Contact

**Fangyi (Cecilia) Wu**  
M.S. Applied Data Science, University of Chicago  
fangyiwu0717@gmail.com | [LinkedIn](https://www.linkedin.com/in/fangyi-wu)

---

