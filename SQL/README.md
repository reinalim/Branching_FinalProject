# Database

Data sources: 



Data Clean-Up:
- Changed the "N/C" and "NC" to be 0 under the star_ratings column for the IPO_SCOOP_Listing.csv and the three_month_return.csv in order for SQL to ingest
- There is one IPO symbol at lowercase (rue) in the IPO_SCOOP_Listing.csv which needed to be changed to uppercase (RUE) in order to be linked as the primary key to other tables having this symbol at uppercase format
- There were two duplicate records for the same IPO symbols where we decided which fiscal date ending makes more sense based on the IPO's going public:
1. Symbol TIG in the combined_filtered_balance_sheet.csv - we had deleted row with fiscaldate_end of 7/15/2020
2. Symbol ZS in the combined_filtered_income_statement.csv - we had deleted row with fiscaldate_end of 4/30/2018

