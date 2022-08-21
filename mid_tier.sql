create database Real_Estate;
use Real_Estate;
select * from population_by_county;
Select distinct Stname from population_by_county;
select * from low_tier_county where regionName like 'Saint Louis%'
select * from mid_tier_county where regionName like 'Saint Louis%'
update low_tier_county
set regionName='Saint Louis County'
where regionName='Saint Louis City'

update mid_tier_county
set regionName='Saint Louis County'
where regionName='Saint Louis City'
SET SQL_SAFE_UPDATES = 0;

update top_tier_county
set regionName='Saint Louis County'
where regionName='Saint Louis City'

select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from low_tier_county l left join population_by_county p 
on l.RegionName=p.CtyName and l.StateName=p.Stname ;
select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from mid_tier_county m left join population_by_county p 
on m.RegionName=p.CtyName and m.statename=p.stname order by StateName;
select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from top_tier_county t left join population_by_county p 
on t.RegionName=p.CtyName and t.statename=p.stname order by StateName;
truncate TABLE LowTierHousePopulation;
Create Table LowTierHousePopulation (
	StateName varchar(2),
    RegionName varchar(50),
    pop20 int,
    JulyValue20 int,
    pop21 int,
    JulyValue21 int
)
insert into LowTierHousePopulation select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from low_tier_county l Left join population_by_county p 
on l.RegionName=p.CtyName and l.statename=p.stname order by StateName;

truncate table MidTierHousePopulation
Create Table MidTierHousePopulation (
	StateName varchar(2),
    RegionName varchar(50),
    pop20 int,
    JulyValue20 int,
    pop21 int,
    JulyValue21 int
)
insert into MidTierHousePopulation select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from Mid_tier_county m left join population_by_county p 
on m.RegionName=p.CtyName and m.statename = p.stname order by StateName;

truncate table TopTierHousePopulation;
Create Table TopTierHousePopulation (
	StateName varchar(2),
    RegionName varchar(50),
    pop20 int,
    JulyValue20 int,
    pop21 int,
    JulyValue21 int
)
insert into TopTierHousePopulation select StateName, RegionName, popestimate2020 as pop20, JulyValue20, popestimate2021 as pop21, JulyValue21 
from top_tier_county t left join population_by_county p 
on t.RegionName=p.CtyName and t.statename=p.stname order by StateName;

select * from lowtierhousepopulation;
select * from midtierhousepopulation;
select * from toptierhousepopulation;
select * from toptierhousepopulation where pop20 is null or pop21 is null;
select * from midtierhousepopulation where pop20 is null or pop21 is null;
select * from population_by_county;
drop table population_by_county;
select * from lowtierhousepopulation where pop20 is null;