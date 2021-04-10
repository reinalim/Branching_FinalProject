# Group Project - IPO Analysis
UofT Data Analytics - Module 20: Final Project

---

## Contents 
  * Overview
    - Purpose
    - Resources
    - Communications
    - Team Member
  * Results
  * Summary
 

---  
   ### Purpose
   To apply machine learning and neural networks and use the features within our provided dataset to create a binary classifier that is capable of predicting upcoming IPO returns by industry/sector. 
  
   - Deliverable 1: Presentation
   - Deliverable 2: GitHub
   - Deliverable 3: Machine Learning Model
   - Deliverable 4: Database
   - Deliverable 5: Dashboard 
  
   ### Resources
   * Data Resources
     1. IPOScoop:  https://www.iposcoop.com/
     2. Alpha Vantage: https://www.alphavantage.co/documentation/
  
  * Software: Python, Pandas, GitHub, Visual Studio Code, PostgreSQL, Jupyter Notebook, Tableau,
  
  ### Communications
  1. Slack Channel
  2. Github Collaboration 
  3. Zoom Meeting
  
  
  ### Team Member:
 * Andrew Sukmawan
 * Anthony Ng
 * Lora Borja
 * Reina Lim
  

## Results

### Deliverable 1: Presentation

   | README Requirements   |  Response  | 
   | :--- | :--- |
   | **Selected Topic** | IPO Analysis | 
   | **Reason why this topic was selected** | 1. Personal interest <br/> 2. Availability of data source <br/> 3. Discover how the global pandemic affected IPO listing |
   | **Questions hoping to answer** | 1. What is the proportion of each sector? <br/> 2.Which industries have the best and worst return in 2019 and 2020? <br/> 3. How has the appetite for IPOs in each sector changed? How did they performed over the years from 2000 to 2020? <br/> 4. How can you benefit from the above information?
   | **Data Source** | IPOScoop: https://www.iposcoop.com/ <br/> Alpha Vantage: https://www.alphavantage.co/documentation/
   

  
 <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> Presentation: Link to Google Slides </a>

  
  ### Deliverable 2: GitHub  
   
   Master Branch 
   * All code necessary to perform exploratory analysis - Completed
   * Some code to complete the machine learning portion of the porject - Completed 
   
   README.md
   * Description of the communication protocols - Established
   * Outline of the project - Completed
   * 8 Commits in total - Completed
   
   
   ### Deliverable 3: Machine Learning Model

   * Present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
      - Takes in data in from the provisional database
      - Output labels for input data
   ### Preliminary Data Preprocessing
   - To convert our categorical variable data into indicator variables of 0 or 1, we used panda's .get_dummies
   - Preprocessing on our calculated columns which serve as our selected features such as Debt-to-Asset ratio and Net Profit Margin, had to be done before they   
     could be introduced into our model.
    - any N/A's, or infinite values had to be removed
   
   ### Feature Engineering and Feature Selection
   -  Potential features we decided to include and test since these are relevant KPIs/ Business metrics to determine company performance which could influence a company's stock price
   * **Feature Category - Reason for Selection**
   		* Categorical: The market’s receptiveness of each IPO will never be the same each issuance. We believe that it will differ largely based on the Sector and Industry of the company.
   		* Operational Performance: We believe that the market’s receptiveness of an IPO would be directly related to how well the company is performing. Specifically, it should be tied to a company’s profitability on different levels (gross, net, and earnings before accounting & financial deductions), as well as its ability to generate sufficient cash flow to maintain and grow its operations.
   		* Financial Health: We believe that the market would also take into consideration of the company’s indebtedness and liquidity. 
   		* Long-term Planning: The market should also take into account of the company’s plan for the future. R&D and Cash Flow from Investment are good proxies that reflect the company’s willingness and preparedness for facing future challenges.
    
   * **Target Features - Three Month Return & First Day Return**
   
   | Features Category  | Feature | Description | 
   | :--- | :--- |:--- |
   | **Categorical** | **Industry**| It refers to a part of the economy in which a great number of companies can be categorized and is larger in comparison to “Industry”. | 
   | **Categorical** | **Sector**| It refers to a series of companies that operate in a similar business sphere, and its categorization is more narrow.
   | **Operational Performance** | **EBITDA** | Earnings before interest, taxes, depreciation, and amortization, is a measure of a company's overall financial performance before the influence of accounting and financial deductions.  |
   | **Operational Performance** | **Gross Profit Margin** | A measure of profitability that shows the percentage of revenue that exceeds the cost of goods sold. |
   | **Operational Performance**| **Net Profit Margin**| It is the percentage of sales remaining after all expenses, interest, taxes and preferred stock dividends have been deducted from total revenue. |
   | **Operational Performance**| **Operating Cash Flow** | It is a measure of the amount of cash generated by a company's normal business operations. It indicates whether a company can generate sufficient positive cash flow to maintain and grow its operations. | 
   | **Financial Health** | **Debt Asset Ratio**| A leverage ratio that defines the total amount of debt relative to assets owned by the company.|
   | **Financial Health**|**Current Ratio**| A liquidity metric that measures the company's ability to pay off its short term financial obligations in one year|
   | **Long-term Planning**|**Research & Development (R&D)**| This is the amount of expenses in which the company devotes into developing or enhancing new products and services.|
   | **Long-term Planning**| **Cash Flow from Investment**| How much cash has been generated or spent from various investment-related activities in a specific period. Investing activities include purchases of physical assets, investments in R&D, investments in securities, or the sale of securities or assets.| 
   
   | Feature | Importance in 3 Month Return <br/> Rating 1-10 (Least to Most) | Importance in First Day Return <br/> Rating 1-10 (Least to Most)
   | :--- |:---: |:---: |
   | **Sector** | 9 | 3 | 
   | **Industry** | 10 | 8 | 
   | **EBITDA** | 1 | 4 | 
   | **Current Ratio** | 5  | 7 |
   | **Gross Profit Margin** | 3 | 5 | 
   | **Net Profit Margin** | 8 | 6 | 
   | **Operating Cash Flow** | 4 | 10 | 
   | **Debt Asset Ratio** | 6 | 1 | 
   | **Current Asset Ratio** | 5 | 4 | 
   | **Research & Development** | 7 | 2 |
   | **Cash Flow from Investment** | 2 | 9 |
  
#### Model Choice
- Since we have labeled data, we've tried using a variety of different binary classification models:
    - Logistic Regression
    - Random Forest
    - Support Vector Machine - SVM  
    - Deep Learning
- The most successful model is Deep Learning with Neural Networks, where the 3-Month Return Model achieved a 65% accuracy, and the First Day Return Model achieved at 60% accuracy.

#### Logistic Regression

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/log.png" width="80%">


#### Random Forest

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/random.png" width="80%">
 

#### Deep Learning

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/deep.png" width="80%">



#### To be attempted

- Explore sector specific features
    - there are many different features at which people would value certain companies  more depending on the specific 
    - different businesses have could have differenent emphasis on different metrics
    - ie. manufacturing KPI vs merchandising KPI
- Training/testing:
    - training data on pre 2019 data
    - testing on 2020 data
- Other Featrues to test:
    - Total Sales Revenue
    - Total Net Profit
    - EBITDA
     
     
### Deliverable 4: Database
   
   * Present a provisional database that stands in for the final database and accomplishes the following:
      - Sample data that mimics the expected final database structure or schema  - Completed
      - Draft machine learning module is connected to the provisional database  - Completed
   
   
   **Database stores static data for use during the project**
 
   <img src="https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/Dashboard/Dashboard/Images/Database_Table_Screenshot.png" width="80%">
   
   
   **Database interface and connection strings to PostgreSQL with SQLAlchemy**

   <img src="https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/Dashboard/Dashboard/Images/DatabaseConnect_ToModel.png" width="80%">
   
   
   **Entity Relationship Diagram (ERD)** - Showing Relationships
   
   - List of Tables:
   
   	- Three Month Return 
	- Income Statement
	- IPO Scoop Listing
	- Company Overview
	- Cash Flow Statement
	- Balance Sheet

  <img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/SQL/FinalProject_IPO_ERD.png" width="80%">
     
### Deliverable 5: Dashboard
   * Storyboard on Google Slide(s):  
   <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> Presentation: Link to Google Slides </a>
   
   * Description of the tool: 
   
  <img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/Dashboard/Images/Tableau%20Logo.png" width="50%">
  
  Tableau is a data visualization software that is used for data science and business intelligence. Tableau can create a wide range of different visualization to interactively present the data and showcase insights.
     
   * Description of interative element(s):
     - Hover Function, Search and Filter Functions for maps and charts: Dropdown multiple value filter by Year, Quarter, Sector, Region

<br>

---

## Summary




