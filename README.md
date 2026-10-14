# SQL Data Analytics Project

A collection of SQL scripts for exploring sales data, analyzing business performance, and generating customer and product reports using Microsoft SQL Server.

## Table of Contents

- [Overview](#overview)
- [Objectives](#objectives)
- [Tools & Technologies](#tools--technologies)
- [Dataset](#dataset)
- [Analysis Workflow](#analysis-workflow)
- [Key SQL Techniques](#key-sql-techniques)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Clone the Repository](#1-clone-the-repository)
  - [Initialize the Dataset](#2-initialize-the-dataset)
  - [Run the Analysis](#3-run-the-analysis)
- [Repository Structure](#repository-structure)
- [Project Roadmap](#project-roadmap)
- [Acknowledgments](#acknowledgments)
- [Author](#author)
- [License](#license)

## Overview

This project demonstrates a structured approach to data exploration and analytics using SQL. It progresses from database exploration and data profiling to analytical techniques such as ranking, trend analysis, cumulative metrics, performance comparisons, and customer segmentation.

The project also includes customer and product reports designed to support business intelligence and data-driven decision-making.

This repository is the analytics component of my **Data with SQL** project series. It builds on the data warehouse developed in the [SQL Data Warehouse project](https://github.com/AmirHSoukhteh/sql-data-warehouse).

## Objectives

- Explore the database structure and understand the underlying datasets.
- Analyze dimensions, date ranges, and key business measures.
- Identify sales patterns, trends, and performance differences.
- Evaluate the contribution of products and customer groups to overall sales.
- Segment customers and products based on relevant business metrics.
- Develop reusable SQL queries and reports for business analysis.

## Tools & Technologies

- **Database:** Microsoft SQL Server
- **Query Language:** T-SQL
- **Development Environment:** SQL Server Management Studio (SSMS)
- **Data Formats:** SQL Server backup (`.bak`) and CSV files

## Dataset

The project uses sales data containing customer, product, and transaction information.

The repository includes the following datasets:

| File | Description |
|---|---|
| `gold.dim_customers.csv` | Customer dimension data |
| `gold.dim_products.csv` | Product dimension data |
| `gold.fact_sales.csv` | Sales transaction data |
| `gold.report_customers.csv` | Customer analytics report |
| `gold.report_products.csv` | Product analytics report |
| `DataWarehouseAnalytics.bak` | SQL Server database backup |

The CSV files are available in `datasets/csv-files/`, while the database backup is stored in `datasets/`.

## Analysis Workflow

The project is organized into sequential SQL scripts, each focusing on a specific analytical task.

| Script | Analysis |
|---|---|
| `01_database_exploration.sql` | Explore database objects, tables, and columns |
| `02_dimensions_exploration.sql` | Examine customer and product dimensions |
| `03_date_range_exploration.sql` | Investigate date ranges and temporal coverage |
| `04_measures_exploration.sql` | Calculate key business measures |
| `05_magnitude_analysis.sql` | Compare business metrics across categories |
| `06_ranking_analysis.sql` | Rank customers and products by performance |
| `07_change_over_time_analysis.sql` | Analyze trends and changes over time |
| `08_cumulative_analysis.sql` | Calculate cumulative metrics and running totals |
| `09_performance_analysis.sql` | Evaluate performance over time and against reference periods |
| `10_part_to_whole_analysis.sql` | Analyze contributions to total sales |
| `11_data_segmentation.sql` | Group customers and products into meaningful segments |
| `12_report_customers.sql` | Generate a customer analytics report |
| `13_report_products.sql` | Generate a product analytics report |

## Key SQL Techniques

This project demonstrates practical applications of:

- Database and data exploration
- Aggregate functions and grouping
- Common Table Expressions (CTEs)
- Window functions and ranking
- Date-based analysis
- Running totals and cumulative calculations
- Period-over-period comparisons
- Percentage contribution and part-to-whole analysis
- Customer and product segmentation
- SQL-based analytical reporting

## Getting Started

### Prerequisites

- Microsoft SQL Server
- SQL Server Management Studio (SSMS), or another compatible SQL client
- Git

**Note:** SSMS is a database management tool, while SQL Server is the database engine. You need a compatible SQL Server instance to execute the T-SQL scripts.

### 1. Clone the Repository

Choose either HTTPS or SSH, depending on your GitHub configuration.

**HTTPS**

```bash
git clone https://github.com/AmirHSoukhteh/sql-data-analytics.git
cd sql-data-analytics
```

**SSH**

```bash
git clone git@github.com:AmirHSoukhteh/sql-data-analytics.git
cd sql-data-analytics
```

### 2. Initialize the Dataset

There are two ways to prepare the database for analysis.

#### Option A: Restore the Database Backup

If you want to start directly with the analytics project:

1. Open SQL Server Management Studio and connect to your SQL Server instance.
2. Restore `datasets/DataWarehouseAnalytics.bak` as a database.
3. Verify that the restored database contains the required Gold-layer tables.
4. Open the SQL scripts and ensure that their database references match your restored database.

#### Option B: Use the Data Warehouse Project

If you have already completed my [SQL Data Warehouse project](https://github.com/AmirHSoukhteh/sql-data-warehouse), you can use its Gold-layer tables.

The required tables are:

- `gold.dim_customers`
- `gold.dim_products`
- `gold.fact_sales`

Ensure that the database and schemas match the names expected by the analytics scripts.

#### Option C: Import the CSV Files

You can also create and populate the required tables using the provided CSV files.

1. Create the database and tables using `scripts/00_init_dataset.sql`.
2. Import the following files from `datasets/csv-files/` into their corresponding tables:
   - `gold.dim_customers.csv`
   - `gold.dim_products.csv`
   - `gold.fact_sales.csv`
3. Verify that the table structures, column names, and data types match the SQL queries.

Review `scripts/00_init_dataset.sql` before execution to confirm its database configuration and initialization steps. If it does not create all the required tables, create or import them before proceeding.

### 3. Run the Analysis

Open the SQL scripts in SQL Server Management Studio and execute them in numerical order, starting with database exploration and progressing through the analytical queries and final reports.

Each script focuses on a specific technique or business question and can be reviewed independently once its required tables are available.

The final two scripts generate customer and product analytics reports.

## Repository Structure

```text
sql-data-analytics/
├── datasets/
│   ├── csv-files/
│   │   ├── gold.dim_customers.csv
│   │   ├── gold.dim_products.csv
│   │   ├── gold.fact_sales.csv
│   └── DataWarehouseAnalytics.bak
│
├── docs/
│   └── Project Roadmap.png
│
├── reports/
│   ├── gold.report_customers.csv
│   └── gold.report_products.csv
|
├── scripts/
│   ├── 00_init_dataset.sql
│   ├── 01_database_exploration.sql
│   ├── 02_dimensions_exploration.sql
│   ├── 03_date_range_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   ├── 06_ranking_analysis.sql
│   ├── 07_change_over_time_analysis.sql
│   ├── 08_cumulative_analysis.sql
│   ├── 09_performance_analysis.sql
│   ├── 10_part_to_whole_analysis.sql
│   ├── 11_data_segmentation.sql
│   ├── 12_report_customers.sql
│   └── 13_report_products.sql
│
├── LICENSE
└── README.md
```

## Project Roadmap

The project follows a structured progression from understanding the database to producing analytical reports.

![Project Roadmap](./docs/Project%20Roadmap.png)

## Acknowledgments

Special thanks to [Data with Baraa](https://www.youtube.com/@DataWithBaraa) for the educational resources and guidance that helped me develop my understanding of SQL-based data analytics.

## Author

**Amir Hossein Soukhteh**

- **GitHub:** [@AmirHSoukhteh](https://github.com/AmirHSoukhteh)
- **Portfolio:** [amirhsoukhteh.github.io](https://amirhsoukhteh.github.io)

## License

This project is licensed under the [MIT License](LICENSE). See the `LICENSE` file for details.
