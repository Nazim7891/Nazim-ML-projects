use muhammed_nasim;
select * from population;

/* change coloumn name */
alter table population rename column `sereis` to count;

/*select only asian countries*/
select * from population where Continent='Asia';

/*select every continents except asia*/
select * from population where not Continent='asia';

/* select first 2 country with most population*/
select country,`Rank`,`2022 Population`  from population order by `2022 Population` desc limit 2;

/* which country has least population in 20222*/
select country,`Rank`,`2022 Population`  from population order by `2022 Population` limit 1;

/* which are the first 10 ranked countries*/
select * from population where `Rank` between 1 and 10 ;

/* change coloumn name */
alter table population rename column `sereis` to count;

/* fetch indian population details*/
select country, 2022 Population, 2020 Population, 2015 Population, 2010 Population, 2000 Population, 1990 Population, 1980 Population, 1970 Population 
from population where country='india';

/*select country with more area */
select country,`Area (kmÂ²)`,`Rank`,`Continent` from population order by `Area (kmÂ²)` desc limit 1

/* which country has highest density per kilometer */
select country,`Rank`,`Capital`,`Density (per kmÂ²)` from population order by `Density (per kmÂ²)` desc limit 1;

/*which country has lowest density per kilometer*/
select country,`Density (per kmÂ²)`from population where `Density (per kmÂ²)` = (select(min(`Density (per kmÂ²)`))from population);

/*which country has highest growth rate*/
select country ,`Growth Rate` as highest_growth from population 
where `Growth Rate`= (select(max(`Growth Rate`)) from population);

/* country with least growth rate*/
select country,`Growth Rate`as lowest_growth from population
where `Growth Rate` = (select(min(`Growth Rate`)) from population);

/*which country has highest world population percentage*/
select country,`World Population Percentage` as highest_population from population 
where `World Population Percentage`= (select(max(`World Population Percentage`))from population);

/*which country has lowest world population percent*/
select country,`World Population Percentage`as lowest_percentage from population
where `World Population Percentage`= (select(min(`World Population Percentage`)) from population);

/*which country has highest population in 1970*/
select country,`1970 Population` as highest_population1970 from population
where `1970 Population`= (select(max(`1970 Population`)) from population);

/*which country has highest population in 1980*/
select country,`1980 Population` as highest_population1980 from population
where `1980 Population`= (select(max(`1980 Population`)) from population);

/* sum of population of asia continent in 2022*/
select sum(`2022 Population`) as asia_sum_population2022 from population where continent = 'asia';

/*sum of population of africa continent in 2022*/
select sum(`2022 Population`) as africa_sum_of_population_2022 from population where continent = 'africa' ;

/*sum of population in 2022*/
select sum(`2022 Population`) as poplation_2022 from population where Country = country;


