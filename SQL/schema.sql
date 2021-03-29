-- FinalProject_IPO Segment 1: Due Mar 21, 2021 
-- Creating the Database in PostgreSQL
-- Creating the following 6 base tables for ipo-database to connect to drafted machine learning model in Jupyter notebook

-- The ipo_scoop_listing table
CREATE TABLE ipo_scoop_listing (
	trade_date DATE,
	issuer VARCHAR(90),
    symbol VARCHAR(40) NOT NULL,
	lead_jointlead_managers VARCHAR,
	offer_price MONEY,
	opening_price MONEY,
	firstday_close MONEY,
	firstday_percent_pxchng NUMERIC,
	dollar_change_opening MONEY,
	dollar_change_close MONEY,
	star_ratings NUMERIC,
	performed VARCHAR,
    PRIMARY KEY (symbol)
);

-- The company_overview table
CREATE TABLE company_overview (
    symbol VARCHAR(40) NOT NULL,
	asset_type VARCHAR(40),
	company_name VARCHAR,
	exchange VARCHAR(40),
	currency VARCHAR(40),
	country VARCHAR(40),
	sector VARCHAR(60),
	industry VARCHAR(60),
	address VARCHAR(90),
	FOREIGN KEY (symbol) REFERENCES ipo_scoop_listing (symbol),
    PRIMARY KEY (symbol)
);

-- The three_month_return table
CREATE TABLE three_month_return (
	symbol VARCHAR(40) NOT NULL,
	asset_type VARCHAR(40),
	company_name VARCHAR,
	exchange VARCHAR(40),
	currency VARCHAR(40),
	country VARCHAR(40),
	sector VARCHAR(60),
	industry VARCHAR(60),
	address VARCHAR(90),
	trade_date DATE,
	issuer VARCHAR(90),
	lead_jointlead_managers VARCHAR,
	offer_price MONEY,
	opening_price MONEY,
	firstday_close MONEY,
	firstday_percent_pxchng NUMERIC,
	dollar_change_opening MONEY,
	dollar_change_close MONEY,
	star_ratings NUMERIC,
	performed VARCHAR,
	three_mth_date DATE,
	three_mth_ipo NUMERIC,
	price_change NUMERIC,
	three_mth_return NUMERIC,
	price_gain_loss VARCHAR(40),
    PRIMARY KEY (symbol),
	FOREIGN KEY (symbol) REFERENCES ipo_scoop_listing (symbol)
);

-- The combined_filtered_income_statement table
CREATE TABLE combined_filtered_income_statement (
	symbol VARCHAR(40) NOT NULL,
	fiscaldate_end DATE,
	reported_currency VARCHAR,
	gross_profit NUMERIC,
	total_revenue NUMERIC,
	costof_revenue NUMERIC,
	costof_goodservices_sold NUMERIC,
	operating_income NUMERIC,
	selling_gen_admin NUMERIC,
	research_dev NUMERIC,
	operating_expenses NUMERIC,
	investment_income_net NUMERIC,
	net_interest_income NUMERIC,
	interest_income NUMERIC,
	interest_expense NUMERIC,
	noninterest_income NUMERIC,
	othernon_operatingincome NUMERIC,
	depreciation NUMERIC,
	dpr_and_amort NUMERIC,
	income_beforetax NUMERIC,
	incometax_expense NUMERIC,
	interest_debt_expense NUMERIC,
	netincome_cont_operations NUMERIC,
	comprehensive_income_netoftax NUMERIC,
	ebit NUMERIC,
	ebitda NUMERIC,
	netincome NUMERIC,
    PRIMARY KEY (symbol),
	FOREIGN KEY (symbol) REFERENCES ipo_scoop_listing (symbol)
);

-- The combined_filtered_balance_sheet table
CREATE TABLE combined_filtered_balance_sheet (
	symbol VARCHAR(40) NOT NULL,
	fiscaldate_end DATE,
	reported_currency VARCHAR(40),
	total_assets NUMERIC,
	total_current_assets NUMERIC,
	cash_cashequivalent_carrvalue NUMERIC,
	cash_shortterm_investments NUMERIC,
	inventory NUMERIC,
	currentnet_receivables NUMERIC,
	total_noncurrent_assets NUMERIC,
	propertyplant_equip NUMERIC,
	acc_dpr_amort_ppe NUMERIC,
	intangible_assets NUMERIC,
	intangible_assets_exclgoodwill NUMERIC,
	goodwill NUMERIC,
	investments NUMERIC,
	longterm_investments NUMERIC,
	shortterm_investments NUMERIC,
	other_current_assets NUMERIC,
	other_noncurrrent_assets NUMERIC,
	total_liabilities NUMERIC,
	total_current_liabilities NUMERIC,
	current_acct_payable NUMERIC,
	deferred_revenue NUMERIC,
	current_debt NUMERIC,
	shortterm_debt NUMERIC,
	total_noncurrent_liabilities NUMERIC,
	capital_lease_obligations NUMERIC,
	longterm_debt NUMERIC,
	current_longterm_debt NUMERIC,
	longterm_debt_noncurrent NUMERIC,
	short_longterm_debt_total NUMERIC,
	other_current_liabilities NUMERIC,
	other_noncurrent_liabilities NUMERIC,
	total_shareholder_equity NUMERIC,
	treasury_stock NUMERIC,
	retained_earnings NUMERIC,
	common_stock NUMERIC,
	common_stockshares_outstanding NUMERIC,
    PRIMARY KEY (symbol),
	FOREIGN KEY (symbol) REFERENCES ipo_scoop_listing (symbol)
);

-- The combined_filtered_cash_flow table
CREATE TABLE combined_filtered_cash_flow (
	symbol VARCHAR(40) NOT NULL,
	fiscaldate_end DATE,
	reported_currency VARCHAR(40),
	operating_cashflow NUMERIC,
	payments_foroperating_activities NUMERIC,
	proceeds_fromoperating_activities NUMERIC,
	changein_operating_liabilities NUMERIC,
	changein_operating_assets NUMERIC,
	dpr_depletion_amort NUMERIC,
	capital_expenditures NUMERIC,
	changein_receivables NUMERIC,
	changein_inventory NUMERIC,
	profit_loss NUMERIC,
	cashflow_frominvestment NUMERIC,
	cashflow_fromfinancing NUMERIC,
	proceeds_fromrepayment_shortterm_debt NUMERIC,
	payments_forrepurchase_commonstock NUMERIC,
	payments_forrepurchase_equity NUMERIC,
	payments_forrepurchase_preferredstock NUMERIC,
	div_payout NUMERIC,
	div_payout_commonstock NUMERIC,
	div_payout_preferredStock NUMERIC,
	proceeds_fromissuance_commonstock NUMERIC,
	proceeds_fromissuance_longterm_debtcapital_secnet NUMERIC,
	proceeds_fromissuance_preferredstock NUMERIC,
	proceeds_fromrepurchase_equity NUMERIC,
	proceeds_fromsale_treasurystock NUMERIC,
	changein_cash_cashequivalents NUMERIC,
	changein_exchangerate NUMERIC,
	netincome NUMERIC,
    PRIMARY KEY (symbol),
	FOREIGN KEY (symbol) REFERENCES ipo_scoop_listing (symbol)
);

-- Loading CSV files into the table via copy from C drive (method used as regular Import CSV in pgAdmin4 was giving failed exit code 1)
-- Use the following queries if the regular import method to load in the CSV files vie the pgAdmin GUI don't work
-- Creat a "Files" folder on your C drive and copy&paste all the needed CSV files in this folder to load into pgAdmin4 when executing the following codes:
COPY Public."ipo_scoop_listing" FROM 'C:\Files\IPO_SCOOP_Listing.csv' DELIMITER ',' CSV HEADER ;
COPY Public."company_overview" FROM 'C:\Files\company_overview.csv' DELIMITER ',' CSV HEADER ;
COPY Public."three_month_return" FROM 'C:\Files\three_month_return.csv' DELIMITER ',' CSV HEADER ;
COPY Public."combined_filtered_income_statement" FROM 'C:\Files\combined_filtered_income_statement.csv' DELIMITER ',' CSV HEADER ;
COPY Public."combined_filtered_balance_sheet" FROM 'C:\Files\combined_filtered_balance_sheet.csv' DELIMITER ',' CSV HEADER ;
COPY Public."combined_filtered_cash_flow" FROM 'C:\Files\combined_filtered_cash_flow.csv' DELIMITER ',' CSV HEADER ;

-- Checking the tables created have the data stored and validating the number of rows and columns matches the CSV files
-- ipo_scoop_listing has 3470 rows & 12 columns
SELECT * FROM ipo_scoop_listing;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'ipo_scoop_listing';

-- company_overview has 2685 rows & 9 columns
SELECT * FROM company_overview;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'company_overview';

-- three_month_return has 1690 rows & 25 columns
SELECT * FROM three_month_return;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'three_month_return';

-- combined_filtered_income_statement has 706 rows & 27 columns
SELECT * FROM combined_filtered_income_statement;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'three_month_return';

-- combined_filtered_balance_sheet has 902 rows & 39 columns
SELECT * FROM combined_filtered_balance_sheet;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'combined_filtered_balance_sheet';

-- combined_filtered_cash_flow has 703 rows & 30 columns
SELECT * FROM combined_filtered_cash_flow;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'combined_filtered_cash_flow';

-- FinalProject_IPO Segment 2: Due Apr 4, 2021
-- Created ipo-database interfaces with any updates to extracted data from Segment 1
-- Create one "master table" housing all data from all base tables from Segment 1 using joins and connect to drafted machine learning model in Jupyter notebook 
-- In order to get one "master table" we'll need to do multiple joins

-- Join 1: ipo_scoop_listing and company_overview tables = ipo_listing_with_overview table
SELECT ipo.symbol,
	ipo.trade_date,
	ipo.issuer,
	ipo.lead_jointlead_managers,
	ipo.offer_price,
	ipo.opening_price,
	ipo.firstday_close,
	ipo.firstday_percent_pxchng,
	ipo.dollar_change_opening,
	ipo.dollar_change_close,
	ipo.star_ratings,
	ipo.performed,
	co.asset_type,
	co.company_name,
	co.exchange,
	co.currency,
	co.country,
	co.sector,
	co.industry,
	co.address
INTO ipo_listing_with_overview
FROM ipo_scoop_listing as ipo
LEFT JOIN company_overview as co
ON ipo.symbol = co.symbol
;
-- Check ipo_listing_with_overview table has been created
-- Should return a total of 3470 rows and combined 20 columns
SELECT * FROM ipo_listing_with_overview;
SELECT COUNT (*) FROM ipo_listing_with_overview;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'ipo_listing_with_overview';

-- Join 2: The above ipo_listing_with_overview and three_month_return tables = ipo_overview_three_mth_return table
SELECT ipowo.symbol,
	ipowo.trade_date,
	ipowo.issuer,
	ipowo.lead_jointlead_managers,
	ipowo.offer_price,
	ipowo.opening_price,
	ipowo.firstday_close,
	ipowo.firstday_percent_pxchng,
	ipowo.dollar_change_opening,
	ipowo.dollar_change_close,
	ipowo.star_ratings,
	ipowo.performed,
	ipowo.asset_type,
	ipowo.company_name,
	ipowo.exchange,
	ipowo.currency,
	ipowo.country,
	ipowo.sector,
	ipowo.industry,
	ipowo.address,
	tmr.three_mth_date,
	tmr.three_mth_ipo,
	tmr.price_change,
	tmr.three_mth_return,
	tmr.price_gain_loss
INTO ipo_overview_three_mth_return
FROM ipo_listing_with_overview as ipowo
LEFT JOIN three_month_return as tmr
ON ipowo.symbol = tmr.symbol
;
-- Check ipo_overview_three_mth_return table has been created
-- Should return a total of 3470 rows and now combined 25 columns
SELECT * FROM ipo_overview_three_mth_return;
SELECT COUNT (*) FROM ipo_overview_three_mth_return;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'ipo_overview_three_mth_return';

-- Join 3: The above ipo_overview_three_mth_return and combined_filtered_income_statement tables = new ipos_with_income table
SELECT iotmr.symbol,
	iotmr.trade_date,
	iotmr.issuer,
	iotmr.lead_jointlead_managers,
	iotmr.offer_price,
	iotmr.opening_price,
	iotmr.firstday_close,
	iotmr.firstday_percent_pxchng,
	iotmr.dollar_change_opening,
	iotmr.dollar_change_close,
	iotmr.star_ratings,
	iotmr.performed,
	iotmr.asset_type,
	iotmr.company_name,
	iotmr.exchange,
	iotmr.currency,
	iotmr.country,
	iotmr.sector,
	iotmr.industry,
	iotmr.address,
	iotmr.three_mth_date,
	iotmr.three_mth_ipo,
	iotmr.price_change,
	iotmr.three_mth_return,
	iotmr.price_gain_loss,
	cfis.fiscaldate_end,
	cfis.reported_currency,
	cfis.gross_profit,
	cfis.total_revenue,
	cfis.costof_revenue,
	cfis.costof_goodservices_sold,
	cfis.operating_income,
	cfis.selling_gen_admin,
	cfis.research_dev,
	cfis.operating_expenses,
	cfis.investment_income_net,
	cfis.net_interest_income,
	cfis.interest_income,
	cfis.interest_expense,
	cfis.noninterest_income,
	cfis.othernon_operatingincome,
	cfis.depreciation,
	cfis.dpr_and_amort,
	cfis.income_beforetax,
	cfis.incometax_expense,
	cfis.interest_debt_expense,
	cfis.netincome_cont_operations,
	cfis.comprehensive_income_netoftax,
	cfis.ebit,
	cfis.ebitda,
	cfis.netincome
INTO ipos_with_income
FROM ipo_overview_three_mth_return as iotmr
LEFT JOIN combined_filtered_income_statement as cfis
ON iotmr.symbol = cfis.symbol
;
-- Check ipos_with_income table has been created
-- Should return a total of 3470 rows and now combined 51 columns
SELECT * FROM ipos_with_income;
SELECT COUNT (*) FROM ipos_with_income;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'ipos_with_income';

-- Join 4: The above ipos_with_income and combined_filtered_balance_sheet tables = ipos_with_income_balancesheet table
SELECT iwi.symbol,
	iwi.trade_date,
	iwi.issuer,
	iwi.lead_jointlead_managers,
	iwi.offer_price,
	iwi.opening_price,
	iwi.firstday_close,
	iwi.firstday_percent_pxchng,
	iwi.dollar_change_opening,
	iwi.dollar_change_close,
	iwi.star_ratings,
	iwi.performed,
	iwi.asset_type,
	iwi.company_name,
	iwi.exchange,
	iwi.currency,
	iwi.country,
	iwi.sector,
	iwi.industry,
	iwi.address,
	iwi.three_mth_date,
	iwi.three_mth_ipo,
	iwi.price_change,
	iwi.three_mth_return,
	iwi.price_gain_loss,
	iwi.fiscaldate_end,
	iwi.reported_currency,
	iwi.gross_profit,
	iwi.total_revenue,
	iwi.costof_revenue,
	iwi.costof_goodservices_sold,
	iwi.operating_income,
	iwi.selling_gen_admin,
	iwi.research_dev,
	iwi.operating_expenses,
	iwi.investment_income_net,
	iwi.net_interest_income,
	iwi.interest_income,
	iwi.interest_expense,
	iwi.noninterest_income,
	iwi.othernon_operatingincome,
	iwi.depreciation,
	iwi.dpr_and_amort,
	iwi.income_beforetax,
	iwi.incometax_expense,
	iwi.interest_debt_expense,
	iwi.netincome_cont_operations,
	iwi.comprehensive_income_netoftax,
	iwi.ebit,
	iwi.ebitda,
	iwi.netincome,
	cfbs.total_assets,
	cfbs.total_current_assets,
	cfbs.cash_cashequivalent_carrvalue,
	cfbs.cash_shortterm_investments,
	cfbs.inventory,
	cfbs.currentnet_receivables,
	cfbs.total_noncurrent_assets,
	cfbs.propertyplant_equip,
	cfbs.acc_dpr_amort_ppe,
	cfbs.intangible_assets,
	cfbs.intangible_assets_exclgoodwill,
	cfbs.goodwill,
	cfbs.investments,
	cfbs.longterm_investments,
	cfbs.shortterm_investments,
	cfbs.other_current_assets,
	cfbs.other_noncurrrent_assets,
	cfbs.total_liabilities,
	cfbs.total_current_liabilities,
	cfbs.current_acct_payable,
	cfbs.deferred_revenue,
	cfbs.current_debt,
	cfbs.shortterm_debt,
	cfbs.total_noncurrent_liabilities,
	cfbs.capital_lease_obligations,
	cfbs.longterm_debt,
	cfbs.current_longterm_debt,
	cfbs.longterm_debt_noncurrent,
	cfbs.short_longterm_debt_total,
	cfbs.other_current_liabilities,
	cfbs.other_noncurrent_liabilities,
	cfbs.total_shareholder_equity,
	cfbs.treasury_stock,
	cfbs.retained_earnings,
	cfbs.common_stock,
	cfbs.common_stockshares_outstanding
INTO ipos_with_income_balancesheet
FROM ipos_with_income as iwi
LEFT JOIN combined_filtered_balance_sheet as cfbs
ON iwi.symbol = cfbs.symbol
;
-- Check ipos_with_income_balancesheet table has been created
-- Should return a total of 3470 rows and now combined 87 columns
SELECT * FROM ipos_with_income_balancesheet;
SELECT COUNT (*) FROM ipos_with_income_balancesheet;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'ipos_with_income_balancesheet';

-- Final Join 5: The above ipos_with_income_balancesheet and combined_filtered_cash_flow tables = master_data table
SELECT iwib.symbol,
	iwib.trade_date,
	iwib.issuer,
	iwib.lead_jointlead_managers,
	iwib.offer_price,
	iwib.opening_price,
	iwib.firstday_close,
	iwib.firstday_percent_pxchng,
	iwib.dollar_change_opening,
	iwib.dollar_change_close,
	iwib.star_ratings,
	iwib.performed,
	iwib.asset_type,
	iwib.company_name,
	iwib.exchange,
	iwib.currency,
	iwib.country,
	iwib.sector,
	iwib.industry,
	iwib.address,
	iwib.three_mth_date,
	iwib.three_mth_ipo,
	iwib.price_change,
	iwib.three_mth_return,
	iwib.price_gain_loss,
	iwib.fiscaldate_end,
	iwib.reported_currency,
	iwib.gross_profit,
	iwib.total_revenue,
	iwib.costof_revenue,
	iwib.costof_goodservices_sold,
	iwib.operating_income,
	iwib.selling_gen_admin,
	iwib.research_dev,
	iwib.operating_expenses,
	iwib.investment_income_net,
	iwib.net_interest_income,
	iwib.interest_income,
	iwib.interest_expense,
	iwib.noninterest_income,
	iwib.othernon_operatingincome,
	iwib.depreciation,
	iwib.dpr_and_amort,
	iwib.income_beforetax,
	iwib.incometax_expense,
	iwib.interest_debt_expense,
	iwib.netincome_cont_operations,
	iwib.comprehensive_income_netoftax,
	iwib.ebit,
	iwib.ebitda,
	iwib.netincome,
	iwib.total_assets,
	iwib.total_current_assets,
	iwib.cash_cashequivalent_carrvalue,
	iwib.cash_shortterm_investments,
	iwib.inventory,
	iwib.currentnet_receivables,
	iwib.total_noncurrent_assets,
	iwib.propertyplant_equip,
	iwib.acc_dpr_amort_ppe,
	iwib.intangible_assets,
	iwib.intangible_assets_exclgoodwill,
	iwib.goodwill,
	iwib.investments,
	iwib.longterm_investments,
	iwib.shortterm_investments,
	iwib.other_current_assets,
	iwib.other_noncurrrent_assets,
	iwib.total_liabilities,
	iwib.total_current_liabilities,
	iwib.current_acct_payable,
	iwib.deferred_revenue,
	iwib.current_debt,
	iwib.shortterm_debt,
	iwib.total_noncurrent_liabilities,
	iwib.capital_lease_obligations,
	iwib.longterm_debt,
	iwib.current_longterm_debt,
	iwib.longterm_debt_noncurrent,
	iwib.short_longterm_debt_total,
	iwib.other_current_liabilities,
	iwib.other_noncurrent_liabilities,
	iwib.total_shareholder_equity,
	iwib.treasury_stock,
	iwib.retained_earnings,
	iwib.common_stock,
	iwib.common_stockshares_outstanding,
	cfcf.operating_cashflow,
	cfcf.payments_foroperating_activities,
	cfcf.proceeds_fromoperating_activities,
	cfcf.changein_operating_liabilities,
	cfcf.changein_operating_assets,
	cfcf.dpr_depletion_amort,
	cfcf.capital_expenditures,
	cfcf.changein_receivables,
	cfcf.changein_inventory,
	cfcf.profit_loss,
	cfcf.cashflow_frominvestment,
	cfcf.cashflow_fromfinancing,
	cfcf.proceeds_fromrepayment_shortterm_debt,
	cfcf.payments_forrepurchase_commonstock,
	cfcf.payments_forrepurchase_equity,
	cfcf.payments_forrepurchase_preferredstock,
	cfcf.div_payout,
	cfcf.div_payout_commonstock,
	cfcf.div_payout_preferredStock,
	cfcf.proceeds_fromissuance_commonstock,
	cfcf.proceeds_fromissuance_longterm_debtcapital_secnet,
	cfcf.proceeds_fromissuance_preferredstock,
	cfcf.proceeds_fromrepurchase_equity,
	cfcf.proceeds_fromsale_treasurystock,
	cfcf.changein_cash_cashequivalents,
	cfcf.changein_exchangerate
INTO master_data
FROM ipos_with_income_balancesheet as iwib
LEFT JOIN combined_filtered_cash_flow as cfcf
ON iwib.symbol = cfcf.symbol
;
-- Check master_data table has been created
-- Should return a total of 3470 rows and now combined 113 columns
SELECT * FROM master_data;
SELECT COUNT (*) FROM master_data;
SELECT COUNT (*) FROM information_schema.columns WHERE table_name = 'master_data';