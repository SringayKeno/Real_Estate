create database Real_Estate;
use Real_Estate;
select * from mid_tier_houses;
select StateName, JulyValue20, JulyValue21,JulyValue22 from mid_tier_houses where RegionName !='United States';
Create table Mid_Tier (
	StateName varchar(2),
    JulyValue20 int,
    JulyValue21 int,
    JulyValue22 int
);
insert into Mid_Tier select StateName, JulyValue20, JulyValue21,JulyValue22 from mid_tier_houses where RegionName !='United States';
select * from Mid_Tier;

