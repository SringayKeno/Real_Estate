use Real_Estate;
select * from population_by_county where ctyname like 'Saint%';
select * from mid_tier_by_county;
select * from county_housing_units ;
select * from unemployment;
with cte as (select regionName, statename, StateCodeFIPs, JulyValue16, JulyValue17, Julyvalue18, Julyvalue19, Julyvalue20, Julyvalue21, 
JanValue22, Febvalue22, MarValue22, AprValue22, MayValue22, JunValue22, JulyValue22, 2020HousingUnits, 2021HousingUnits,
popestimate2020 as pop20, popestimate2021 as pop21
from mid_tier_by_county m left join county_housing_units c on m.RegionName=c.county and m.statename=c.state left join 
population_by_county p on c.state=p.stname and c.county=p.ctyname left join unemployment u on u.Area_name=p.ctyname and m.statename=u.state)
select cte.*, Unemployment_rate_2016, unemployment_rate_2017, unemployment_rate_2018, 
unemployment_rate_2019, unemployment_rate_2020, unemployment_rate_2021, Median_Household_Income_2020 as MedHHIncome2020,
Med_HH_Income_Percent_of_State_Total_2020 as MedHHIncomePercent2020 from cte left join unemployment un on cte.RegionName=un.area_name and
cte.stateName=un.State;

left join unemployment un on un.Area_name=u.Area_name and un.State=u.state
 
p.RegionName=p.ctyname and
a.statename=p.stname left join unemployment u on a.regionname=u.area_name and a.statename=u.state 