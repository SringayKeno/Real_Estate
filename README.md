

# Housing Value Prediction

![r-architecture-ujGLsMmXoBg-unsplash - Copy - Copy](https://user-images.githubusercontent.com/102890151/184289324-70cc4694-fb49-44e5-acf5-2fd669545f6f.jpg)

## Project Overview
#### Project Description



Our sister project [Forecasting Home Prices in Sacramento County California](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) can also be found here in Github.

#### Why we selected this project



#### Questions we hope to answer with data


## Resources

#### * Data Sources: <a href="https://www.zillow.com/research/data/" >Zillow's research data</a> and Census Data <a href="https://www.census.gov/programs-surveys/popest/data/tables.html" >Metro Population 21</a>
     
* ####  Software: Google Slides, Git Bash, Jupyter Notebook, MySQL Workbench 8.0, Slack,  Tableau 2022.1, VScode
* ####  Languages: Python 3.7
* ####  Libraries:  pandas, pymongo, numpy, RandomForestRegressor, rfpimp, sklearn.model, statistics
* ####  Machine Learning Model: Random Forest Regressor
* ####  Database: MySQL Server, MongoDB Cloud

## Communication Resources

* Group chat on Slack.
* Project tracked using <a href="https://finalproject7.monday.com/boards/3094167465" >Monday.com's Project Tracker</a>
* Project status meetings nightly at 5pm and or 7pm weekdays. 10am on Saturdays


## Database
![image](https://user-images.githubusercontent.com/103475613/185799553-454b1e1c-a710-468e-b479-09a0faf7c709.png)

### Cleaning Data in Local Relational Database:
* #### Precleaned the datasets from multiple sources in Excel to ensure all counties names are in the correct format.
* #### Imported the four csv files to MySQL for joining 
* #### extracted the useful values and renamed all the columns for modeling.
### Cloud Database: MongoDB 
* #### Stored the clean dataset for members to run the mode

## Data Analysis
--------------------------------
What external factors influence the housing value most apart from the conditions like the lot size and bedroom/bathroom numbers of a house? With the Zillow housing value on a monthly basis view, we tried to predict the mid-tier housing value of July 2022 and compare our prediction with Zillow released data, using all kinds of data resources we could find online that were categorized by counties.


-	X Features and y Target:
-	y Targets: 
-	July 2022 value (mid-tier housing value)
-    X Features:
-	StateCodeFIPs           
-	JulyValue16               
-	JulyValue17               
-	Julyvalue18               
-	Julyvalue19               
-	Julyvalue20               
-	Julyvalue21               
-	JanValue22                
-	Febvalue22                
-	MarValue22                
-	AprValue22                
-	MayValue22                
-	JunValue22                
-	JulyValue22               
-	2020HousingUnits          
-    2021HousingUnits          
-    pop20                     
-    pop21                     
-    Unemployment_rate_2016     
-	unemployment_rate_2017    
-	unemployment_rate_2018     
-	unemployment_rate_2019     
-	unemployment_rate_2020     
-	unemployment_rate_2021      
-    MedHHIncome2020             
-	MedHHIncomePercent2020     
-	Train & Test Data size:
-	2843 samples, 80% training sets, and 20% test sets.

-	#### Model: Random Forest Regressor
o	Different from the classifier models, our machine learning model needs to predict a precise housing value. Therefore, we chose Random Forest Regressor.
o	We used mean absolute error to get the mean of all the differences between all the predicted values and actual values.
o	We calculate the average error number and the error rate. For example, if the mid-tier housing value of a county in July 2022 is $200,000 and our predicted price is $210,000, then the error is $10,000, and the error rate is $10,000/$200,000=0.05, which is a 5%  error. But here we are checking the average of all the differences.
o	
-	#### Machine Learning Training:
1st Training: Using only July values of previous years to predict the July value of 2022
$10144 average error;  4.25% error
 
  
#### Result:
-	We reduced the average error from $10114 to $1475 and the error rate from 4.25% to 0.62%,
-	We reduced 85% of the average error.

## Analysis Summary:
-	The previous month's housing values are the most informative references to look at when we are predicting the next month's value.
-	For the mid-tier housing value of July 2022, apart from the most recent months' housing values as valuable references, the housing value of the same month of previous years also counts. In addition, medium household income also has a positive impact on housing value prediction.

 

## Future Perspective:
-	We can use the same model to run the Top Tier housing value prediction or Bottom Tier Housing value prediction. 
-	Based on the data at hand, we assume that the unemployment rate might have a positive impact on bottom-tier housing value, and the median age of a county will also influence the Top tier housing value of this area. Nevertheless, the previous years' and months' housing values are still the most important features for future value prediction. We need to run both datasets to approve these assumptions.
-	Apart from housing value prediction, we also want to see the overall trend of the Real Estate market all over the country. We have a sister project using another model to predict the next jewel of the real estate market for living and investment purposes.
-	Check here for more information.







