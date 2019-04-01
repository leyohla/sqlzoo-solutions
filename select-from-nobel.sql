/* Exercises on select-from-nobel from SQL Zoo
This tutorial is concerned with a table of Nobel prize winners:
nobel(yr, subject, winner)
*/

Q1: Change the query shown so that it displays Nobel prizes for 1950.

Answer: 
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960
 
Q2: Show who won the 1962 prize for Literature.

Answer:
SELECT winner
  FROM nobel
 WHERE yr = 1960
   AND subject = 'Physics'
   
Q3: Show the year and subject that won 'Albert Einstein' his prize.

Answer:
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

Q4: Give the name of the 'Peace' winners since the year 2000, including 2000.

Answer:
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000

Q5: Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

Answer:
SELECT yr, subject, winner
FROM nobel
WHERE (yr >=1980 AND yr <=1989) AND subject = 'Literature'

Q6: Show all details of the presidential winners:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama

Answer:
SELECT * FROM nobel
 WHERE yr = 1970
  AND subject IN ('Cookery',
                  'Chemistry',
                  'Literature')
                  
Q7: Show the winners with first name John

Answer:
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

Q8: Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

Answer: 
SELECT *
FROM nobel
WHERE (subject = "Physics" AND yr = '1980') OR (subject = 'Chemistry' AND yr = 1984)

Q9: Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

Answer:
SELECT *
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

Q10: Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) 
together with winners of a 'Literature' prize in a later year (after 2004, including 2004).

Answer:
SELECT *
FROM nobel
WHERE (subject  = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)

Q11: Find all details of the prize won by PETER GRÜNBERG

Answer:
SELECT *
FROM nobel
WHERE winner LIKE 'peter gr%nberg'

Q12: Find all details of the prize won by EUGENE O'NEILL

Answer:
SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'

Q13: List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

Answer: 
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner

Q14: Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

Answer:
SELECT winner, subject, subject IN ('Physics','Chemistry')
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'),subject,winner
