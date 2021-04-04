# SQL Database

### ERD Diagram

![FinalProject_IPO_ERD](https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/SQL/SQL/FinalProject_IPO_ERD.png)


Quick DBD site was used as a tool to create the ERD diagram to visually display the datasets and establish the data types and the relationships between each table using the primary and foreign keys in order to create the database.

Diagram Tool: https://app.quickdatabasediagrams.com/#/

### Data sources 

From the "DataExtraction" folder the following CSV files are used to create 6 base tables in our SQL Database in pgAdmin.

1. IPO_SCOOP_Listing.csv - containing a list of 3,470 IPOs in the United States from 2000 to 2020 which was sourced from www.iposcoop.com.
2. company_overview.csv - containing the company overview data for each IPO symbol we were able to retrieve from Alpha Vantage (a total of 2,685 records)
3. three_month_return.csv - containing the 2,685 list of IPOs, their company overview, their calculated three-month percentage return, and whether their return was either a gain or a loss.

Under the "notebooks" folder, we created Jupyter Notebooks to concatenate each of the filtered records from the filtered_income_statement,  filtered_balance_sheet, and filtered_cash_flow CSVs in order to combine them into one CSV file to import into the SQL database.

4. combined_filtered_income_statement.csv - containing a total of 706 records of IPOs with quarterly income statement data that is within +/- 45 days of their IPO date.
5. combined_filtered_balance_sheet.csv - containing a total of 902 records of IPOs with quarterly balance sheet data that is within +/- 45 days of their IPO date.
6. combined_filtered_cash_flow.csv - containing a total of 703 records of IPOs with quarterly cash flow data that is within +/- 45 days of their IPO date.

### Joined Tables

Multiple table joins were performed in order to eventually produce a "master_data" table to contain all data records from the 6 base tables using a "LEFT" join, which will connect to our machine learning model in Jupyter notebook. Due to the number of rows and columns on each table, it was best to join them one at a time in order to have full control on the final output, validate that all records are accounted for, and avoid the risk of unintentionally loosing any data.

Join 1: ipo_scoop_listing and company_overview tables = ipo_listing_with_overview table
- Returning a total of 3470 rows and combined 20 columns

Join 2: The above ipo_listing_with_overview and three_month_return tables = ipo_overview_three_mth_return table
- Returning a total of 3470 rows and now combined 25 columns

Join 3: The above ipo_overview_three_mth_return and combined_filtered_income_statement tables = ipos_with_income table
- Returning a total of 3470 rows and now combined 51 columns

Join 4: The above ipos_with_income and combined_filtered_balance_sheet tables = ipos_with_income_balancesheet table
- Returning a total of 3470 rows and now combined 87 columns

Final Join 5: The above ipos_with_income_balancesheet and combined_filtered_cash_flow tables = master_data table
- Returning a total of 3470 rows and now combined 113 columns

### schema.sql

Following our ERD diagram, we have created schema.sql to house all our queries performed in pgAdmin from creating our tables, importing our CSV files, creating our joined tables, and validating that the data has been returned with the records as per the CSV files. The team can use this in order to recreate the database in their local pgAdmin.

### SQL Table Screeshot

In this folder are the screenshot of each of the tables created in pgAdmin. There are 6 base tables plus 5 joined tables = a total of 11 tables in our database.

### Additional Data Clean-Up

- Changed the "N/C" and "NC" to be 0 under the star_ratings column for the IPO_SCOOP_Listing.csv and the three_month_return.csv for SQL to ingest
- There is one IPO symbol at lowercase (rue) in the IPO_SCOOP_Listing.csv which needed to be changed to uppercase (RUE) in order to be linked as the primary key to other tables having this symbol at uppercase format
- There were two duplicate records (reference the "manual_deletion_ofdata" folder) for the same IPO symbols where we decided which fiscal date ending makes more sense based on the IPO's going public:
1. Symbol TIG in the combined_filtered_balance_sheet.csv - we had deleted row with fiscaldate_end of 7/15/2020.
2. Symbol ZS in the combined_filtered_income_statement.csv - we had deleted row with fiscaldate_end of 4/30/2018.

### ipo_database.db

A database file was created using the "backup" function as another option for the team to recreate the database in their local pgAdmin by using the "restore" function. This is just an alternative way but the schema.sql file is also provided in order to execute the same purpose.
