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
   
   
  Segment 1
   - Deliverable 1: Presentation
   - Deliverable 2: GitHub
   - Deliverable 3: Machine Learning Model
   - Deliverable 4: Database
  
  Segment 2 ~ 4 Deliverables:
   - Deliverable 1: Presentation
   - Deliverable 2: GitHub
   - Deliverable 3: Machine Learning Model
   - Deliverable 4: Database
   - Deliverable 5: Dashboard (Segment #2-4)
  
   ### Resources
   * Data Resources
     1. Alpha Vantage: https://www.alphavantage.co/documentation/
     2. IPOScoop:  https://www.iposcoop.com/.
  
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
  

<br>

--- 

## Results - Segment #2


   ### Deliverable 1: Presentation
   <ins> Segment #1 </ins>
  
   * Selected Topic - IPO Analysis
   * Reason why this topic was selected
   * Questions hoping to answer
   * Source of Data
   

  <ins> Segment #2 </ins>
  
  <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> Presentation: Link to Google Slides </a>
  
   ### Deliverable 2: GitHub  
   <ins> Segment #1 & 2 </ins>
   
   Master Branch 
   * All code necessary to perform exploratory analysis - Completed
   * Some code to complete the machine learning portion of the porject - Completed 
   
   README.md
   * Description of the communication protocols - Established
   * Outline of the project - Completed 
   
   
   ### Deliverable 3: Machine Learning Model
   <ins> Segment #1 </ins>
   * Present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
      - Takes in data in from the provisional database
      - Output labels for input data
   
   <ins> Segment #2 </ins>

  #### Preliminary Data Preprocessing
   - To convert our categorical variable data into indicator variables of 0 or 1, we used panda's .get_dummies
   - Preprocessing on our calculated columns which serve as our selected features such as Debt-to-Asset ratio and Net Profit Margin, had to be done before they   
     could be introduced into our model.
    - any N/A's, or infinite values had to be removed
  #### Feature Engineering and Feature Selection
  -  Potential features we decided to include and test since these are relevant KPIs/ Business metrics to determine company performance which could influence a 
     company's stock price
    - Net Profit Margin
		- This is the percentage of total profit over total sales made by the company. It is the percentage of sales remaining after all expenses, interest, taxes and preferred stock dividends have been deducted from total revenue
        - Indicates the company's ability to bring money from its regular operations
	- Gross Margin
	    - This metric is especially important for starting companies as it reflects on improved processes and production
	- Debt Asset Ratio
        - For shareholders, this is a good indicator of where a company's assets are held. Whether the bulk of assets are owned by the shareholders vs. creditors
	- Current Ratio
        - This is a financial KPI that measure the company's ability to pay off its short term financial obligations in one year.

#### Model Choice
- Since we have labeled data, we've tried using a variety of different binary classification models:
    - Logistic Regression
    - Random Forest
    - Support Vector Machine - SVM  
    - Deep Learning
- Our most successful results so far - with introducing just debt-to-asset ratio with Sector/Industry and a target feature of three month price grain/increase:

#### Logistic Regression

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/log.png">

#### Random Forest

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/random.png">

#### Deep Learning

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/deep.png">

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
    - EBITD
     
   ### Deliverable 4: Database
   
   <ins> Segment #1 </ins>
   * Present a provisional database that stands in for the final database and accomplishes the following:
      - Sample data that mimics the expected final database structure or schema  - Completed
      - Draft machine learning module is connected to the provisional database  - Completed
   
   <ins> Segment #2 </ins>
   
   **Database stores static data for use during the project**
 
   <img src=https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/Dashboard/Dashboard/Images/Database_Table_Screenshot.png>
   
   
   **Database interface and connection strings to PostgreSQL with SQLAlchemy**

   <img src=https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/Dashboard/Dashboard/Images/DatabaseConnect_ToModel.png>
   
   
   **Relationship Entity Diagram (ERD)**
   
   <img src=https://github.com/reinalim/FinalProject_IPO/blob/Develop/SQL/FinalProject_IPO_ERD.png>
   
  ### Deliverable 5: Dashboard
   * Storyboard on Google Slide(s):  
   <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> Presentation: Link to Google Slides </a>
   
   * Description of the tool: 
     - Tableau
     
   * Description of interatice element(s):
     - Content Here

<br>

---

## Summary




