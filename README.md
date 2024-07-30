# Crowdfunding Data Engineering Project

## Project Overview
This project involves extracting and transforming data from `crowdfunding.xlsx` and `contacts.xlsx` Excel files to create four DataFrames: Category, Subcategory, Campaign, and Contacts. These DataFrames are then exported as CSV files and imported into a PostgreSQL database. The project includes creating an ERD, designing a database schema, and verifying the data import.

## Table of Contents
1. [Data Extraction and Transformation](#data-extraction-and-transformation)
   - [Category DataFrame](#category-dataframe)
   - [Subcategory DataFrame](#subcategory-dataframe)
   - [Campaign DataFrame](#campaign-dataframe)
   - [Contacts DataFrame](#contacts-dataframe)
2. [Database Creation](#database-creation)
   - [ERD Sketch](#erd-sketch)
   - [Database Schema](#database-schema)
   - [Postgres Database and Table Creation](#postgres-database-and-table-creation)
3. [Data Import](#data-import)
4. [Acknowledgements](#acknowledgements)

## Data Extraction and Transformation

### Category DataFrame
1. Extract the data from `crowdfunding.xlsx`.  
2. Transform the data to create a Category DataFrame with:
   - A `category_id` column with sequential entries from `cat1` to `catn`.
python
```
category_df = pd.DataFrame({"category_id": cat_ids, "category": categories})
```
   - A `category` column containing category titles.
3. Export the Category DataFrame as `category.csv`.

### Subcategory DataFrame
1. Extract the data from `crowdfunding.xlsx`.  
2. Transform the data to create a Subcategory DataFrame with:
   - A `subcategory_id` column with sequential entries from `subcat1` to `subcatn`.
python
```
subcategory_df = pd.DataFrame({"subcategory_id": sub_cat_ids, "subcategory": subcategories})
```
   - A `subcategory` column containing subcategory titles.
3. Export the Subcategory DataFrame as `subcategory.csv`.

### Campaign DataFrame
1. Extract the data from `crowdfunding.xlsx`.
2. Transform the data to create a Campaign DataFrame with:
   - The `cf_id` column.
   - The `contact_id` column.
   - The `company_name` column.
   - The `blurb` column, renamed to `description`.
   - The `goal` column, converted to float.
   - The `pledged` column, converted to float.
   - The `outcome` column.
   - The `backers_count` column.
   - The `country` column.
   - The `currency` column.
   - The `launched_at` column, renamed to `launch_date` and converted to datetime format.
   - The `deadline` column, renamed to `end_date` and converted to datetime format.
   - The `category_id` column, matching the `category_id` in the Category DataFrame.
   - The `subcategory_id` column, matching the `subcategory_id` in the Subcategory DataFrame.
3. Export the Campaign DataFrame as `campaign.csv`.

### Contacts DataFrame

#### Using Python Dictionary Methods for extracting and transforming the data from `contacts.xlsx`:
1. Import `contacts.xlsx` into a DataFrame.
2. Iterate through the DataFrame, converting each row to a dictionary.
3. Extract dictionary values using a Python list comprehension.
4. Create a new DataFrame with the extracted data.
5. Split the `name` column into `first_name` and `last_name` columns.
python
```
contact_info_df[['first_name', 'last_name']] = contact_info_df['name'].str.split(' ', expand = True)
```
6. Export the DataFrame as `contacts.csv`.

## Database Creation using PostgreSQL

### ERD Sketch
Inspect the four CSV files and sketch an ERD using QuickDBD.
- QuickDBD:
   ![quickdbd](https://github.com/omidk414/Crowdfunding_ETL/blob/main/ERD_QuickDBD_diagram/QuickDBD_Code.png)
- ERD Diagram:
   ![erd](https://github.com/omidk414/Crowdfunding_ETL/blob/main/ERD_QuickDBD_diagram/ERD_Diagram.png)

### Database Schema
Create a table schema for each CSV file specifying data types, primary keys, foreign keys, and other constraints. Save the schema as `crowdfunding_db_schema.sql`.

### Postgres Database and Table Creation
1. Create a new PostgreSQL database named `crowdfunding_db`.
![Crowdfunding_db](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/Crowdfunding_db.png)
   
3. Use the database schema to create tables in the correct order to handle foreign keys.
4. Verify table creation with SELECT statements.

## Data Import
1. Import each CSV file into its corresponding SQL table.
- Contact Table:
  ![contact](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/contact_table.png)
- Category Table:
  ![category](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/category_table.png)  
- Sub-category Table:
  ![subcategory](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/subcategory_table.png)
- Campaign Table:
  ![campaign](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/campaign_table.png)

3. Verify that each table has the correct data with SELECT statements.
![campaign](https://github.com/omidk414/Crowdfunding_ETL/blob/main/Images/crowdfunding_db_schemata.png)



### Acknowledgements
- Study Group Members:
  - Gursimran Kaur - kaursimran081999@gmail.com - SimranBoparai
  - Evan Wall - ewall@escoffier.edu - Ewall24


