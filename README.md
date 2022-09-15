# Housing Value Prediction with Random Forest Regressor

<img src="https://user-images.githubusercontent.com/102890151/184289324-70cc4694-fb49-44e5-acf5-2fd669545f6f.jpg"  width="1000" height="250">

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FSringayKeno%2FReal_Estate&count_bg=%231C7CAA&title_bg=%23555555&icon=homeassistant.svg&icon_color=%23E7E7E7&title=page+visits&edge_flat=false)](https://hits.seeyoufarm.com)

## ![#2874A6 ](https://via.placeholder.com/15/2874A6/2874A6.png) Table of Contents 
<details>
  <summary>Click to expand or hide</summary>

<br/>
	
* [Project Overview](#project-overview)
   * [Project Description](#project-description) 
   * [Why we selected this project](#why-we-selected-this-project) 
   * [Questions we hope to answer with the data](#questions-we-hope-to-answer-with-the-data) 
* [Resources](#resources) 
* [Communication Resources](#communication-resources)    
* [A Look at Average Home Values in the Mid-Tier Range by US County Through Visualizations](#a-look-at-average-home-values-in-the-mid-tier-range-by-us-county-through-visualizations) 
   * [The Costly Coasts](#the-costly-coasts)
   * [Four additional visualizations and four insights from housing data](#four-additional-visualizations-and-four-insights-from-the-housing-data) 
* [Database](#database)
* [Data Analysis](#data-analysis)   
* [Analysis Summary](#analysis-summary) 
* [Future Perspective](#future-perspective)
* [Links](#links)
	
</details>


##  Project Overview
#### Project Description

The goal of this project is to explore housing values and inventory in the United States. We primarily relied on data from Zillow, with additional data sources to add context and variables which we used to enhance the analysis. We explored low/mid/high tier housing values but focused on mid-tier housing. We focused on the months of July 2021 and July 2022. We looked at different geographical categorizations and compared data at the County, Metropolitan Area, and State level. The ultimate outcome was a prediction of July 2022 housing values for mid-tier housing grouped by state using Random Forest Regressor supervised learning algorithm and the discovery of what external factors influence the housing value.

Our sister project, ["Forecasting Home Prices in Sacramento County California"](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) can also be found here in Github.


#### Why we selected this project

Real estate is a big deal! Anyone who has had to pay for the privilege of a roof over their head knows that paying rent or, if you are lucky enough to own, paying a mortgage is a major financial investment. When 35% (at least) of your income is going into your home - you want to make sure that you are choosing to live in a place where your dollar feels like an investment and not a waste. 

When looking at potential projects, our group wanted to explore this further. The financial burden associated with buying a house is a major commitment. Our group came together with the shared goal of using existing data to explore which regions have housing and how the value of that housing stock will change in the foreseeable future. Our hope was to build a tool and visualizations that would help potential buyers make an informed decision when deciding where to buy. 

Real Estate has always been a popular topic, and people have paid more attention to housing since Covid-19 exploded and remote jobs became pervasive. When home is where the work is, and the wave of millennials reaching home-buying age (census), we've seen tremendous price growth in many areas in the past two years. How many people in the Bay Area gained an extra million dollars from their houses for the markup of the prices. And where would people go to get their dreamed homes and leave behind Silicon Valley and its ridiculous housing price? We are curious about the housing market during this time and wonder what the future holds.

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


##   Resources

*   Data Sources: <a href="https://www.zillow.com/research/data/" >Zillow's research data</a> and Census Data <a href="https://www.census.gov/programs-surveys/popest/data/tables.html" >Metro Population 21</a>
     
*   Software: Google Slides, Git Bash, Jupyter Notebook, MySQL Workbench 8.0, Slack,  Tableau 2022.1, VScode
*   Languages: Python 3.7
*   Libraries:  pandas, pymongo, numpy, RandomForestRegressor, rfpimp, sklearn.model, statistics
*   Machine Learning Model: Random Forest Regressor
*   Database: MySQL Server, MongoDB Cloud

##  Communication Resources

* Group chat on Slack.
* Project tracked using <a href="https://finalproject7.monday.com/boards/3094167465" >Monday.com's Project Tracker</a>
* Project status meetings nightly at 5pm and or 7pm weekdays. 10am on Saturdays


## A Look at Average Home Values in the Mid-Tier Range by US County Through Visualizations

### Tableau was used to visualize and explore July 2022 housing values and inventory in the mid-tier range ( 35th to 65th percentile) by US county

<br/>

#### The Costly Coasts

US counties where the average July 2022 mid-tier home values were highest (shown as dark red on map) tended to be congregated along the US coasts. Those counties were mostly located in the US Northeast and in California. The state of Colorado had a few counties as well in this category. This map, as well as several others that look at July 2022 average home prices in the mid-tier range can be interacted with [here on Tableau Public](https://public.tableau.com/app/profile/ryan3085/viz/ALookatAverageHomeValuesintheMid-TierRange35-65percentilebyUSCountyforJuly2022/USCountyAvgHomeValuesandUnitsJuly2022mid-tier?publish=yes). Check out your county!

<img width="679" alt="Screenshot (512)" src="https://user-images.githubusercontent.com/102890151/189574373-54f8f699-3bb7-4f14-8a48-1d5eae3805b8.png">


#### Miles Matter

The map below shows the region around Austin Texas. Mid-tier Home prices are just over $630,000 in greater Austin (center of map) but just 20 miles to the south in Caldwell County Texas the average home price drops to $260,000. That's a drop of nearly 60%. All counties to the east of Austin all were far more cost effective with their averages in the $250k-$350k range. This map and the one above are interactive and can be found [here on Tableau Public](https://public.tableau.com/app/profile/ryan3085/viz/ALookatAverageHomeValuesintheMid-TierRange35-65percentilebyUSCountyforJuly2022/USCountyAvgHomeValuesandUnitsJuly2022mid-tier?publish=yes).

<img width="602" alt="Screenshot (513)" src="https://user-images.githubusercontent.com/102890151/189780700-07815422-52ac-4acd-a8df-63c08b8da451.png">

<br/>

#### Million Dollar Counties

The counties (below, left) are counties whose mid-tier average July home prices were above $1 million. California had the most counties. Other states were Florida, Colorado, Massachusetts, New York, Hawaii, Wyoming, and Virginia. Not shown here is the District of Columbia, whose average home value was also above $1 million. On the right are 8 more counties whose average July home values were between $900,000 and $1 million. They may soon be joining those counties on the left.

<img src="https://user-images.githubusercontent.com/102890151/189946397-986567bc-6e51-4930-b57d-886bf38aad66.png" width=40% height=40%><img src="https://user-images.githubusercontent.com/102890151/189946412-79d564be-0af2-49f7-b94b-b4045fd7209e.png" width=35% height=35%>



(below left) A 1,078 square foot home that was listed for sale in July of 2022 in Nantucket County Massachusetts. The home listed for $1,995,000, which is just below the mid-tier average home value of $2,040,000 for Nantucket County, which is the highest in the US for mid-tier homes. $2 million dollars may not sound mid-tier, but a quick glance at homes for sale on the island of Nantucket shows dozens of homes in the $4-8 million dollar range. 

(below right) A home in Wyoming County, West Virginia listed for $39,900. Wyoming County's July average home price was among the lowest in the US at $39,826 for the mid-tier house range.
	
<img src="https://user-images.githubusercontent.com/102890151/189938166-5435555a-bc78-4370-8f77-97c16f5d9717.jpg" width=40% height=40%><img src="https://user-images.githubusercontent.com/102890151/189944347-ae3156a9-201c-4de2-9bf4-eb0fecf9d11e.jpg" width=40% height=40%>

<br/>

#### Counties below $90,000 in Average July Home Values (mid-tier)

This visual (below) shows all the states and the number of counties where the mid-tier average home values are below $90,000. Arkansas, Illinois, and Oklahoma had the most, followed by Kansas, Kentucky, and Texas. Virginia, which has one county in the million-dollar range also had several counties in this illustration.

<img width="530" alt="Screenshot (506)" src="https://user-images.githubusercontent.com/102890151/189780778-ab83263e-4424-41e1-888b-0f8f99cce793.png">


<br/>

#### Counties below $60,000 in Average July Home Values (mid-tier)

Lastly, a map (below) showing a collection of counties whose average home value is below $60,000. These counties tended to be along the Mississippi River in Arkansas, along the Red River in Oklahoma, and in mountains of Eastern Kentucky.

<img width="584" alt="Screenshot (507)" src="https://user-images.githubusercontent.com/102890151/189780784-dae05bda-cfd6-442e-a87e-ee92a2815cae.png">


<br/>

### Four Additional Visualizations and Four Insights from the Housing Data


[These additional visualizations can be found in Tableau here](https://public.tableau.com/app/profile/bibo.wang/viz/July2022Mid-tierHomeValues/Dashboard1?publish=yes)

<img width="720" alt="Dashboard 1" src="https://user-images.githubusercontent.com/102890151/188798705-feca43a9-aeea-4e35-bebc-a9ef3d4c0c3f.png">

[Back to top of page](#housing-value-prediction-with-random-forest-regressor)

##   Database

A conceptual diagram our future database. 

<img src="https://user-images.githubusercontent.com/103475613/185799553-454b1e1c-a710-468e-b479-09a0faf7c709.png"  width="600" height="300">

#### Cleaning Data in Local Relational Database:
*  Precleaned the datasets from multiple sources in Excel to ensure all counties names are in the correct format.
*  Imported the four csv files to MySQL for joining 
*  Extracted the useful values and renamed all the columns for modeling.

#### Cloud Database: MongoDB 
*  Stored the clean dataset for members to run the mode

##   Data Analysis

What external factors influence the housing value most apart from the conditions like the lot size and bedroom/bathroom numbers of a house? With the Zillow housing value monthly view, we tried to predict the mid-tier housing value of July 2022 and compare our prediction with Zillow released data, using all kinds of data resources we could find online that were categorized by counties.


 * ###  X Features and y Target:
	* ####  y Targets: 
	   * July 2022 value (mid-tier housing value)
	* ####  X Features:
	   * StateCodeFIPs           
	   * JulyValue2016- JulyValue21               	
        * JanValue2022-JulyValue2022               
	   * 2020HousingUnits          
	   * 2021HousingUnits          
	   * pop20  and pop21                     
	   * Unemployment_rate_2016 -unemployment_rate_2021      
	   * MedHHIncome2020             
	   * MedHHIncomePercent2020     

### Train & Test Data size:
	 
2837 samples, 80% training sets, and 20% test sets.

### Model Selection: Random Forest Regressor

##### Why we chose Random Forest Regressor?
- We tried to build a Neural Network at first, but the accuracy rate was zero because our prediction was not binary.
- Different from the classifier models, our machine learning model needs to predict a precise home value. Therefore, we chose Random Forest Regressor.

##### How to evaluate our prediction?
- We used mean absolute error to get the mean of all the differences between all the predicted values and actual values.
- We calculate the average error number and the error rate. 
- For example, if the mid-tier housing value of a county in July 2022 is $200,000 and our predicted price is $210,000, then the error is $10,000, and the error rate is $10,000/$200,000=0.05, which is a 5%  error. But here we are checking the average of all the differences.
	
### Machine Learning Training:
        
  #### 1) The 1st Training: Using only July values from previous years to predict the July value of 2022
	
        $11486 average error; 4.82% error
 

  
  ![code](https://user-images.githubusercontent.com/102562557/190285755-feebb5e5-e983-4d3e-b761-7193d72bc3d5.png)

  
  
 #### 2) Checking the pattern between the predicted values and the actual values
  
  
  ![1st](https://user-images.githubusercontent.com/102562557/190286278-bd6be763-c6ce-4816-b608-ebd6ac6b49f8.png)

  
  
 #### 3) Checking the importance of each feature 

  
  
  ![Importance](https://user-images.githubusercontent.com/102890151/188795107-ec0efec5-1096-47ad-8891-115fdf3fc54f.png)


  
 #### 4) Using the method above, we tried several different feature groups to reduce the average error amount and error rate. 
 
a. 5 previous years’ July mid-tier home values: 4.82% error rate
b. All the 25 features: 1.35%
c. 16 features (dropping the bottom 9 most minor important features): 0.96% 
error rate
d. 6 most recent monthly-home-value features: home values from January to June 2022: 0.59% error rate



  <img src="https://user-images.githubusercontent.com/102562557/190285935-1f140832-ff89-46d5-90c1-cb7586ea610b.png"  width="700" height="400">
  

### Results:
-	We reduced the average error from $11486 to $1399 and the error rate from 4.82% to 0.59%,
-	We reduced 88% of the average error (1-(4.82%-0.59%)/4.82%).

##  Analysis Summary:
-	The previous month's housing values are the most informative references to look at when we are predicting the next month's value.
-	For the mid-tier housing value of July 2022, apart from the most recent months' housing values as valuable references, the housing value of the same month of previous years also counts. In addition, medium household income also has a positive impact on housing value prediction.
  
  <img src="https://user-images.githubusercontent.com/102890151/188555372-9d5948ae-d759-4381-be54-b60c5afc9d88.png"  width="800" height="500">

##   Future Perspective:
-	We can use the same model to run the Top Tier housing value prediction or Bottom Tier Housing value prediction. 
-	Based on the data at hand, we assume that the unemployment rate might have a positive impact on bottom-tier housing value, and the median age of a county will also influence the Top tier housing value of this area. Nevertheless, the previous years' and months' housing values are still the most important features for future value prediction. We need to run both datasets to approve these assumptions.
-	Apart from housing value prediction, we also want to see the overall trend of the Real Estate market all over the country. We have a sister project using another model to predict the next jewel of the real estate market for living and investment purposes called Forecasting Home Prices in SAcramento County CA. For that project see link below in Links section.


## Links

- For the Google slides of this project, [Housing Value Prediction with Random Forest Regressor](https://docs.google.com/presentation/d/1PZqFXkw5fcxUvvVw5MuVrqotDwdwdUKxdH8l32x_qBI/edit#slide=id.g146afed815f_1_1958) click here.

- For our sister project, [Forecasting Home Prices in Sacramento County California](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) click on link.

- A Look at [Average Homes Values in the Mid-Tier Range by US County for July 2022](https://public.tableau.com/app/profile/ryan3085/viz/ALookatAverageHomeValuesintheMid-TierRange35-65percentilebyUSCountyforJuly2022/USCountyAvgHomeValuesandUnitsJuly2022mid-tier?publish=yes) can be found in here.

- [Four additional visualizations and four insights from the housing data](https://public.tableau.com/app/profile/bibo.wang/viz/July2022Mid-tierHomeValues/Dashboard1?publish=yes) can be found in Tableau here.

[To top of page](#housing-value-prediction-with-random-forest-regressor)
