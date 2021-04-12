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
  
  * Software/Tools: Python, Pandas, Visual Studio Code, PostgreSQL, Jupyter Notebook, Tableau,
  * Languages: Python
  * Algorithm: Neural Network
  
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

## Presentation

 <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> **Link to Google Slides** </a>

   | README Requirements   |  Response  | 
   | :--- | :--- |
   | **Selected Topic** | IPO Analysis | 
   | **Reason why this topic was selected** | 1. Personal interest <br/> 2. Availability of data source <br/> 3. Discover how the global pandemic affected IPO listing |
   | **Questions hoping to answer** | 1. What is the proportion of each sector? <br/> 2.Which industries have the best and worst return in 2019 and 2020? <br/> 3. How has the appetite for IPOs in each sector changed? How did they performed over the years from 2000 to 2020? <br/> 4. How can you benefit from the above information?
   | **Data Source** | IPOScoop: https://www.iposcoop.com/ <br/> Alpha Vantage: https://www.alphavantage.co/documentation/
   
  
  ## GitHub  
   
   Master Branch 
   * All code necessary to perform exploratory analysis - Completed
   * Some code to complete the machine learning portion of the porject - Completed 
   
   README.md
   * Description of the communication protocols - Established
   * Outline of the project - Completed
   * 12 Commits in total - Completed
   
  ## Machine Learning Model

  #### Model Choices

  ##### Training/Testing Split

- During Training/Testing our models, the highest accuracy found for both Three Month Return and First Day Closing Price was found when using a 67% training and 33% testing split

 #### Model Selection

- Since we have labeled data, we've tried using a variety of different binary classification models:
    - Logistic Regression
<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/log.png" width="80%">

   - Random Forest
<img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/ML_Model/images/random.png" width="80%">

   - Deep Learning
    - Using all our 10 features, our models performed:
        - **Three Month Return model: Current Accuracy 69%**
        - **First Day Closing Price model: Current Accuracy 65%**
       
<a href="https://github.com/reinalim/FinalProject_IPO/tree/Develop/ML_Model"> **Click here for learn more about Machine Learning Choices ** </a>
     
## Deliverable 4: Database
   
   **Entity Relationship Diagram (ERD)** - Showing Relationships
   
   - List of Tables:
   
   	- Three Month Return 
	- Income Statement
	- IPO Scoop Listing
	- Company Overview
	- Cash Flow Statement
	- Balance Sheet

  <img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/SQL/FinalProject_IPO_ERD.png" width="80%">

<a href="https://github.com/reinalim/FinalProject_IPO/tree/Develop/SQL"> **Click here for more details** </a>

## Deliverable 5: Dashboard
   
  **Description of the tool**
   
  <img src="https://github.com/reinalim/FinalProject_IPO/blob/Develop/Dashboard/Images/Tableau%20Logo.png" width="50%">
  
  Tableau is a data visualization software that is used for data science and business intelligence. Tableau can create a wide range of different visualization to interactively present the data and showcase insights.
 
 **Dashboard Overview**
 

<img src="https://github.com/reinalim/FinalProject_IPO/blob/Sub-branch/Dashboard/Dashboard/Images/Dashboard_Tableau.png" width="100%">

<a href="https://github.com/reinalim/FinalProject_IPO/tree/Develop/Dashboard"> **Click here for more details** </a>

  **Description of interative element(s)**
   - Search and Filter Functions available on Tableau Dashboard <a href="https://github.com/reinalim/FinalProject_IPO/tree/Develop/Dashboard"> **Click here for more details** </a>

<br>

**For presentation, please click the link below:**
   <a href="https://docs.google.com/presentation/d/1ZlcIOSct6o92qZ16Grknb6WAb4lZjYQNEJHsQfV6WdI/edit?usp=sharing" target="_blank"> Link to Google Slides </a>
<br>

---

## Summary




