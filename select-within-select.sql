Q1: List each country name where the population is larger than that of 'Russia'.

Answer:
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
      
Q2: Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

Answer:
SELECT name FROM world
  WHERE continent = 'Europe'
    AND gdp/population >
(SELECT gdp/population FROM world WHERE name='United Kingdom')

Q3: List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

Answer:
SELECT name, continent 
  FROM world 
    WHERE continent IN(SELECT continent FROM world WHERE name IN('Argentina', 'Australia'))
ORDER BY name ASC

Q4: Which country has a population that is more than Canada but less than Poland? Show the name and the population.

Answer:
SELECT name, population
  FROM world
     WHERE population >
      (SELECT population FROM world WHERE name = 'Canada')
     AND population <
      (SELECT population FROM world WHERE name = 'Poland')
      
