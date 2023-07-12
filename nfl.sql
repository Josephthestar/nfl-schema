-- 1. List the names of all NFL teams'
 ANSWER: SELECT * FROM players;

-- 2. List the stadium name and head coach of all NFC teams
  ANSWER: SELECT * FROM teams;
  ANSWER 2: SELECT stadium,head_coach FROM teams WHERE conference ='NFC';

-- 3. List the head coaches of the AFC South
  ANSWER: SELECT stadium,head_coach FROM teams WHERE conference ='AFC';

-- 4. The total number of players in the NFL
  ANSWER: SELECT * FROM players;

-- 5. The team names and head coaches of the NFC North and AFC East
ANSWER: SELECT name,head_coach FROM teams WHERE conference = 'AFC'

-- 6. The 50 players with the highest salaries
ANSWER: SELECT salary FROM players;

-- 7. The average salary of all NFL players
 ANSWER: SELECT salary FROM players;

-- 8. The names and positions of players with a salary above 10_000_000
  ANSWER:SELECT (salary) FROM players WHERE position = '10_000_000';

-- 9. The player with the highest salary in the NFL
Answer: SELECT name,position,salary  FROM players ORDER BY salary DESC LIMIT 1;
 
-- 10. The name and position of the first 100 players with the lowest salaries
  ANSWER:SELECT name,position,salary  FROM players ORDER BY salary ASC LIMIT 100;

-- 11. The average salary for a DE in the nfl
  Answer: SELECT AVG(salary) FROM players WHERE position = 'DE';

-- 12. The names of all the players on the Buffalo Bills
SELECT players.name,teams.name  FROM players,teams WHERE players.team_id = teams.id AND teams.name ='Buffalo Bills';

-- 13. The total salary of all players on the New York Giants
  ANSWER:SELECT SUM (players.salary) FROM players,teams WHERE players.team_id = teams.id AND teams.name ='New York Giants';

-- 14. The player with the lowest salary on the Green Bay Packers
SELECT players.name,teams.name,salary FROM players,teams WHERE players.team_id = teams.id AND teams.name ='Green Bay Packers' ORDER BY salary ASC LIMIT 1 ;