# Housing Value Prediction with Random Forest Regressor

<img src="https://user-images.githubusercontent.com/102890151/184289324-70cc4694-fb49-44e5-acf5-2fd669545f6f.jpg"  width="1000" height="250">

## Table of contents
<details>
  <summary>Click to expand or hide</summary>


* [Project Overview](#project-overview)
   * [Project Description](#project-description) 
   * [Why we selected this project](#why-we-selected-this-project) 
   * [Questions we hope to answer with the data](#questions-we-hope-to-answer-with-the-data) 
* [Resources](#resources) 
* [Communication Resources](#communication-resources)   
* [Database](#database) 
* [Data Visualizations](#data-visualizations) 
   * [Additional visualizations and 4 insights from housing data](#additional-visualizations-and-4-insights-from-housing-data) 
* [Data Analysis](#data-analysis)   
* [Analysis Summary](#analysis-summary) 
* [Future Perspective](#future-perspective)
	
</details>

## Project Overview
#### Project Description

The goal of this project is to explore housing values and inventory in the United States. We primarily relied on data from Zillow, with additional data sources to add context and variables which we used to enhance the analysis. We explored low/mid/high tier housing values, but focused on mid-tier housing. We focused on the months of July 2021 and July 2022. We looked at different geographical categorizations and compared data at the County, Metropolitan Area, and State level. The ultimate outcome was a prediction of July 2022 housing values for mid-tier housing grouped by state using Random Forest Regressor supervised learning algorithm and the discovery of what external factors influence the housing value.

Our sister project [Forecasting Home Prices in Sacramento County California](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) can also be found here in Github.


#### Why we selected this project

Real estate is a big deal! Anyone who has had to pay for the privelage of a roof over their head knows that paying rent or, if you are lucky enough to own, paying a mortgage is a major financial investment. When 35% (at least) of your income is going into your home - you want to make sure that you are choosing to live in a place where your dollar feels like an investment and not a waste. 

When looking at potential projects, our group wanted to explore this further. The financial burden associated with buying a house is a major commitment. Our group came together with the shared goal of using existing data to explore which regions have housing and how the value of that housing stock will change in the foreseeable future. Our hope was to build a tool and visualizations that would help potential buyers make an informed decision when deciding where to buy. 

Real Estate has always been a popular topic, and people have paid more attention to housing since Covid-19 exploded and remote jobs became pervasive. When home is where the work is, and the wave of millennials reaching home-buying age (census), we've seen tremendous price growth in many areas in the past two years. How many 
people in the Bay Area gained an extra million dollars from their houses for the markup of the prices? And where would people go to get their dreamed homes and leave behind Silicon Valley and its ridiculous housing price? We are curious about the housing market during this particular time and wonder what the future holds.

In addition to a shared interest, we were also intrigued by the wide range of data that was readily available for our analysis. We knew that with the large amount of quality data available, we would be able to explore this topic fully and answer some hard questions using data analytics!


#### Questions we hope to answer with the data:

* #### Can we use historical housing inventory to predict future housing inventory in the US by state?
* #### Can we use historical housing values to predict future housing values in the US by state?
* #### What is the range of available housing inventory by county? By state?
* #### What is the range of housing values by county? By state?
* #### Is there a relationship between population, housing inventory, and housing values?
* #### Is there a relationship between income and housing values?
* #### What external factors influence the housing value most (apart from the conditions like the lot size and bedroom/bathroom numbers of a house)?
* #### What references should we look at when we are predicting the next month's value?
* #### Is there a difference when modeling low/mid/high tier housing values?
* #### Can we predict the next jewel of the real estate market for living and investment purpose?


## Resources

*   Data Sources: <a href="https://www.zillow.com/research/data/" >Zillow's research data</a> and Census Data <a href="https://www.census.gov/programs-surveys/popest/data/tables.html" >Metro Population 21</a>
     
*   Software: Google Slides, Git Bash, Jupyter Notebook, MySQL Workbench 8.0, Slack,  Tableau 2022.1, VScode
*   Languages: Python 3.7
*   Libraries:  pandas, pymongo, numpy, RandomForestRegressor, rfpimp, sklearn.model, statistics
*   Machine Learning Model: Random Forest Regressor
*   Database: MySQL Server, MongoDB Cloud

## Communication Resources

* Group chat on Slack.
* Project tracked using <a href="https://finalproject7.monday.com/boards/3094167465" >Monday.com's Project Tracker</a>
* Project status meetings nightly at 5pm and or 7pm weekdays. 10am on Saturdays


## Database

<img src="https://user-images.githubusercontent.com/103475613/185799553-454b1e1c-a710-468e-b479-09a0faf7c709.png"  width="600" height="300">

#### Cleaning Data in Local Relational Database:
*  Precleaned the datasets from multiple sources in Excel to ensure all counties names are in the correct format.
*  Imported the four csv files to MySQL for joining 
*  extracted the useful values and renamed all the columns for modeling.
#### Cloud Database: MongoDB 
*  Stored the clean dataset for members to run the mode


## Data Visualizations
Tableau was used to visualize and explore housing values, housing inventory, and population in July 2021. 
The [July 2021 Dashboard is here on Tableau Public](https://public.tableau.com/shared/T7F4NTRTK?:display_count=n&:origin=viz_share_link)


<img src="https://user-images.githubusercontent.com/103475613/188294704-542efc6e-6e7c-42da-bea2-606e9f085c28.png"  width="600" height="300">

### Additional visualizations and 4 insights from housing data

<img src="https://user-images.githubusercontent.com/102890151/188559451-4c1c783e-30f3-45b6-a756-f4768391fa7d.png"  width="500" height="8000">

## Data Analysis

What external factors influence the housing value most apart from the conditions like the lot size and bedroom/bathroom numbers of a house? With the Zillow housing value on a monthly basis view, we tried to predict the mid-tier housing value of July 2022 and compare our prediction with Zillow released data, using all kinds of data resources we could find online that were categorized by counties.




*  ####  X Features and y Target:
	* ####  y Targets: 
	   * ####  July 2022 value (mid-tier housing value)
	* ###  X Features:
	   * StateCodeFIPs           
	   * JulyValue2016- JulyValue21               	
        * JanValue2022-JulyValue2022               
	   * 2020HousingUnits          
	   * 2021HousingUnits          
	   * pop20  and pop21                     
	   * Unemployment_rate_2016 -unemployment_rate_2021      
	   * MedHHIncome2020             
	   * MedHHIncomePercent2020     

	Train & Test Data size:
-	2843 samples, 80% training sets, and 20% test sets.

     #### Model: Random Forest Regressor
	Different from the classifier models, our machine learning model needs to predict a precise housing value. Therefore, we chose Random Forest Regressor.
	We used mean absolute error to get the mean of all the differences between all the predicted values and actual values.
	We calculate the average error number and the error rate. For example, if the mid-tier housing value of a county in July 2022 is $200,000 and our predicted price is $210,000, then the error is $10,000, and the error rate is $10,000/$200,000=0.05, which is a 5%  error. But here we are checking the average of all the differences.
	
	#### Machine Learning Training:
        1st Training: Using only July values of previous years to predict the July value of 2022
        $10144 average error;  4.25% error
 
  <img src="https://user-images.githubusercontent.com/102890151/188555088-3e701c65-d5b0-49c6-ab2f-35bbd908662f.png"  width="600" height="500">
  
  <img src="https://user-images.githubusercontent.com/102890151/188555212-e8c40814-77b8-437b-98eb-e7f3c9cc99ac.png"  width="600" height="500">

  <img src="https://user-images.githubusercontent.com/102890151/188555239-fe54f484-2a05-4e8d-9d55-510530bfaac2.png"  width="500" height="400">
  
  <img src="https://user-images.githubusercontent.com/102890151/188555267-71723a89-88cd-4ed3-b6aa-ee8cc354b62d.png"  width="500" height="400">
  
  <img src="https://user-images.githubusercontent.com/102890151/188555321-166b3ee9-1212-4a52-8f62-7a641ab05827.png"  width="700" height="400">
  

#### Results:
-	We reduced the average error from $10114 to $1475 and the error rate from 4.25% to 0.62%,
-	We reduced 85% of the average error.

## Analysis Summary:
-	The previous month's housing values are the most informative references to look at when we are predicting the next month's value.
-	For the mid-tier housing value of July 2022, apart from the most recent months' housing values as valuable references, the housing value of the same month of previous years also counts. In addition, medium household income also has a positive impact on housing value prediction.
  
  <img src="https://user-images.githubusercontent.com/102890151/188555372-9d5948ae-d759-4381-be54-b60c5afc9d88.png"  width="700" height="400">

## Future Perspective:
-	We can use the same model to run the Top Tier housing value prediction or Bottom Tier Housing value prediction. 
-	Based on the data at hand, we assume that the unemployment rate might have a positive impact on bottom-tier housing value, and the median age of a county will also influence the Top tier housing value of this area. Nevertheless, the previous years' and months' housing values are still the most important features for future value prediction. We need to run both datasets to approve these assumptions.
-	Apart from housing value prediction, we also want to see the overall trend of the Real Estate market all over the country. We have a sister project using another model to predict the next jewel of the real estate market for living and investment purposes.
-	[Check here for more information](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county)

[To top of page](#table-of-contents)

 
