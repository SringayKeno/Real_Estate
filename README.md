




## <center>Forecasting Home Prices in Sacramento County CA</center>

![Screenshot (466)](https://user-images.githubusercontent.com/102890151/187573030-680d3f0d-80cb-4081-8edd-9bd179ec3963.png)

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FSringayKeno%2Fforecasting-home-prices-sacramento-county&count_bg=%23DCBB79&title_bg=%23555555&icon=homeassistant.svg&icon_color=%F9E79F&title=page+visits&edge_flat=false)](https://hits.seeyoufarm.com)


### Forecasting Home Prices in Sacramento County California (years 2023-2025) using the SARIMA forecasting algorithm. 
Using over 20 years of Zillow data I forecasted homes values and percentage increases for homes in the 35th to 65th percentile range (medium range homes) in Sacramento County California using the SARIMA forecasting algorithm. 

## ![#d2ae6c](https://via.placeholder.com/15/d2ae6c/d2ae6c.png) Table of Contents 
<details>
  <summary>Click to expand or hide</summary>


* [SARIMA and ARIMA](#sarima-and-arima)
* [Resources](#resources) 
* [Project Code in Python](#project)
* [The Results](#the-results) 
* [The Forecast](#the-forecast) 

</details>


#### SARIMA and ARIMA 

SARIMA or '*seasonal autoregressive integrated moving average'*, is an ARIMA or *auto-regressive integrated moving average* algorithm that supports univariate time series data with a seasonal component. Hense the 'S' for seasonal in front of ARIMA. SARIMA and ARIMA models look at the differences between values in the time series (autocorrelations or serial correlations in the data) . Autocorrelation represents the degree of similarity between a given time series and a lagged version of itself over successive time intervals. ARIMA/SARIMA models the data in 3 ways:

* the **AR** = A pattern based on past observations in the data (auto-regressive) 
* the **I** =The trend and seasonal (non-stationary) patterns in the data is accounted for (integrated) 
* the **MA** =Noise between consecutive time points (moving average) 

Auto-regressive integrated moving average, means it models by making the data set stationary through differencing using d (“integrated” part), pattern of past observations using p (“auto-regressive” part), and noise between consecutive time points using q (“moving average” part).

SARIMA contains four seasonal elements that are not part of ARIMA that must be configured; they are:

* P: Seasonal autoregressive order.
* D: Seasonal difference order.
* Q: Seasonal moving average order.
* m: The number of time steps for a single seasonal period.

#### For more information regarding SARIMA, I suggest a visit to Jason Brownlee's, ['A Gentle Introduction to SARIMA for Time Series Forecasting in Python'](https://machinelearningmastery.com/sarima-for-time-series-forecasting-in-python/)

###  Resources 

*  Data Source: Data sourced from Zillow's research data page. I used [Zillow's Home Value Index (ZHVI)](https://www.zillow.com/research/data/) which is a  smoothed, seasonally adjusted measure of the typical home value and market changes across a given region and housing type. It reflects the typical value for homes in the 35th to 65th percentile range.
* Software: Jupyter Notebook, VScode, Google Slides, Git Bash, Slack
* Languages: Python 3.7
* Libraries: folium, itertools, json, math, pandas, pickle, matplotlib, numpy, scripts, seaborn, sklearn, statsmodel
* Machine Learning Models: SARIMA

###  Project

#### This project consisted of 4 parts:

* Part 1 [data cleaning and it's code can be found here](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county/blob/main/data_cleaned/data_clean_sac.ipynb)
* Part 2 [initial data exploration and it's code can be found here](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county/blob/main/data_explore/data_explore_sacr.ipynb)
* Part 3 [model evaluation and it's code can be found here](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county/blob/main/model_eval/sarima_model_evaluation_sac.ipynb)
* Part 4 [forecasting and it's code can be found here](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county/blob/main/forecast/sarima_forecast_sac.ipynb)

###  The Results

#### In the [data exploration stage ](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county/blob/main/data_explore/data_explore_sacr.ipynb) of the project I identified the top 5 Sacramento zip codes to hold their value best. This was determined by looking at the differences between values (both in dollar and in percentage increases) month over month for the last 20 years. These 5 zip codes deviated furthest from the County average.

#### Those 5 zip codes were:
* 95630 (Folsom CA) 
* 95818 (Land Park Neighborhood Sacramento City)
* 95608 (Carmichael CA)
* 95632 (Galt CA) 
* and number 5 was zip code 95824 (Lemon Hill/FruitRidge Manor Neighborhoods of Sacramento City) 

#### Your average!

The zip code that was closest to average of the County was zip code 95830 which is between Vinyard and Sloughhouse areas of the County. However, looking at zip code 95830, I realized that zip code should have been removed from the analysis. There were 2 issues. The first was not very much data. 95830 is a very small zip code (I was surprised it was it's own zip code) both in housing numbers and in square miles. 95830 consists of two ruralish subdivisions with about maybe 50 homes total. All or most of those homes would be above the 68th percentile which we were looking at here.  

When revisisting this and making correction, the 2nd closest to average zip code was 95834. 95834 is the North Natomas area of Sacramento (City)

###  The Forecast

 
 
#### The projected Home values for the 5 zip codes thru 2025.

<img width="542" alt="Screenshot (470)" src="https://user-images.githubusercontent.com/102890151/188361242-ab7b21e3-498e-4372-a7db-811928d4f714.png">

* Folsom (zip code 95630) which is already one of the highest price point zip codes will remain so and separate itself further from the other Sacramento County zip codes. 
* Med priced homes homes will level off in the Land Park neighborhood (95818) in Sacramento (city) and Carmichael (95608), both areas with older housing stock and higher value (above our 68 pertile looked at here). 
* Galt (95632) will continue to rise, but at a much more more modest rate. 
* Zip code 95824 (Lemon Hill/FruitRidge Manor Neighborhoods of Sacramento City) will continue to show increase in home values.

[back to top of page](#forecasting-home-prices-in-sacramento-county-cA)



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
* [Data Visualizations](#data-visualizations) 
   * [Four additional visualizations and four insights from housing data](#four-additional-visualizations-and-four-insights-from-the-housing-data) 
* [Database](#database)
* [Data Analysis](#data-analysis)   
* [Analysis Summary](#analysis-summary) 
* [Future Perspective](#future-perspective)
* [Links](#links)
	
</details>


##  Project Overview
#### Project Description

The goal of this project is to explore housing values and inventory in the United States. We primarily relied on data from Zillow, with additional data sources to add context and variables which we used to enhance the analysis. We explored low/mid/high tier housing values, but focused on mid-tier housing. We focused on the months of July 2021 and July 2022. We looked at different geographical categorizations and compared data at the County, Metropolitan Area, and State level. The ultimate outcome was a prediction of July 2022 housing values for mid-tier housing grouped by state using Random Forest Regressor supervised learning algorithm and the discovery of what external factors influence the housing value.

Our sister project, ["Forecasting Home Prices in Sacramento County California"](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) can also be found here in Github.


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


##  Data Visualizations

### Housing values, housing inventory, and population in July 2021

Tableau was used to visualize and explore housing values, housing inventory, and population in July 2021. 
This interactive visual [July 2021 Dashboard is here on Tableau Public](https://public.tableau.com/shared/T7F4NTRTK?:display_count=n&:origin=viz_share_link) can be found in link.


<img src="https://user-images.githubusercontent.com/103475613/188294704-542efc6e-6e7c-42da-bea2-606e9f085c28.png"  width="550" height="275">

#### Four additional visualizations and four insights from the housing data


[These additional visualizations can be found in Tableau here](https://public.tableau.com/app/profile/bibo.wang/viz/July2022Mid-tierHomeValues/Dashboard1?publish=yes)

<img width="500" alt="Dashboard 1" src="https://user-images.githubusercontent.com/102890151/188798705-feca43a9-aeea-4e35-bebc-a9ef3d4c0c3f.png">

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

What external factors influence the housing value most apart from the conditions like the lot size and bedroom/bathroom numbers of a house? With the Zillow housing value on a monthly basis view, we tried to predict the mid-tier housing value of July 2022 and compare our prediction with Zillow released data, using all kinds of data resources we could find online that were categorized by counties.


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
	 
	 2843 samples, 80% training sets, and 20% test sets.

### Model: Random Forest Regressor
Different from the classifier models, our machine learning model needs to predict a precise housing value. Therefore, we chose Random Forest Regressor.
We used mean absolute error to get the mean of all the differences between all the predicted values and actual values.
We calculate the average error number and the error rate. For example, if the mid-tier housing value of a county in July 2022 is $200,000 and our predicted price is $210,000, then the error is $10,000, and the error rate is $10,000/$200,000=0.05, which is a 5%  error. But here we are checking the average of all the differences.
	
### Machine Learning Training:
        
  #### 1) The 1st Training: Using only July values from previous years to predict the July value of 2022
	
        $10144 average error;  4.25% error
 

  
  ![code](https://user-images.githubusercontent.com/102890151/188794660-f307e531-f43b-49c4-96ef-96ffa9afe119.png)

  
  
 #### 2) Checking the pattern between the predicted values and the actual values
  
  
  ![1st](https://user-images.githubusercontent.com/102890151/188794909-a5b851b5-5756-4e1c-80d7-1252b790a4a4.png)

  
  
 #### 3) Checking the importance of each feature 

  
  
  ![Importance](https://user-images.githubusercontent.com/102890151/188795107-ec0efec5-1096-47ad-8891-115fdf3fc54f.png)


  
 #### 4) Using the method above, we tried several different feature groups to reduce the average error amount and error rate. 
 
a. 5 previous years’ July mid-tier home values: 4.25% error rate
b. All the 25 features: 0.95%
c. 16 features (dropping the bottom 9 most minor important features): 0.69% 
error rate
d. 9 monthly-home-value features: July home values from 2017, 2020, 2021 
and home values from January to June 2022: 0.62% error rate

- Results:
- We reduced the average error from $10114 to $1475 and the error rate from
4.25% to 0.62%,
-We reduced 85% of the average error. (1-(4.25%-0.62%)/4.25%)


  <img src="https://user-images.githubusercontent.com/102890151/188792033-ea319e9b-117b-4026-8077-65cf82ce67ae.png"  width="700" height="400">
  

### Results:
-	We reduced the average error from $10114 to $1475 and the error rate from 4.25% to 0.62%,
-	We reduced 85% of the average error.

##  Analysis Summary:
-	The previous month's housing values are the most informative references to look at when we are predicting the next month's value.
-	For the mid-tier housing value of July 2022, apart from the most recent months' housing values as valuable references, the housing value of the same month of previous years also counts. In addition, medium household income also has a positive impact on housing value prediction.
  
  <img src="https://user-images.githubusercontent.com/102890151/188555372-9d5948ae-d759-4381-be54-b60c5afc9d88.png"  width="800" height="500">

##   Future Perspective:
-	We can use the same model to run the Top Tier housing value prediction or Bottom Tier Housing value prediction. 
-	Based on the data at hand, we assume that the unemployment rate might have a positive impact on bottom-tier housing value, and the median age of a county will also influence the Top tier housing value of this area. Nevertheless, the previous years' and months' housing values are still the most important features for future value prediction. We need to run both datasets to approve these assumptions.
-	Apart from housing value prediction, we also want to see the overall trend of the Real Estate market all over the country. We have a sister project using another model to predict the next jewel of the real estate market for living and investment purposes called Forecasting Home Prices in SAcramento County CA. For that project see link below in Links section.


## Links

- For Google docs on this project, [Housing Value Prediction with Random Forest Regressor](https://docs.google.com/presentation/d/1PZqFXkw5fcxUvvVw5MuVrqotDwdwdUKxdH8l32x_qBI/edit#slide=id.g146afed815f_1_1958) click here.

- For our sister project, [Forecasting Home Prices in Sacramento County California](https://github.com/SringayKeno/forecasting-home-prices-sacramento-county) click on link.

- Our interactive [July 2021 Dashboard on Tableau Public](https://public.tableau.com/shared/T7F4NTRTK?:display_count=n&:origin=viz_share_link) can be found in here.

- [Four additional visualizations and four insights from the housing data](https://public.tableau.com/app/profile/bibo.wang/viz/July2022Mid-tierHomeValues/Dashboard1?publish=yes) can be found in Tableau here.

[To top of page](#housing-value-prediction-with-random-forest-regressor)
