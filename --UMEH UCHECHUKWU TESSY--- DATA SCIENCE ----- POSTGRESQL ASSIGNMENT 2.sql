


--Q1.HOW MANY COUNTRIES HAVE PLAYED IN THE WORLD CUP(5 YEARS)?

WITH
    all_world_cup AS(
SELECT
	'wc 2002' AS world_cup_year,
	 team,
	 points
FROM
	 fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		team,
		points
FROM
		fifa_2006
UNION ALL
SELECT
	'wc 2010' AS world_cup_year,
	 team,
	 points
FROM
	 fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		team,
		points
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		team,
		points
FROM
		fifa_2018
)
SELECT 
     COUNT (DISTINCT team)
FROM
    all_world_cup;





--Q2.THE TOTAL GAMES PLAYED,WIN,LOSS,GOALS FOR/AGAINST.

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
		SUM(games_played) AS total_games_played,
		SUM(win) AS total_win,
		SUM(loss) AS total_loss,
		SUM(goals_for) AS total_goal_for,
		SUM(goals_against) AS total_goal_against
FROM
	all_world_cup;









--Q3 THE COUNTRY WITH THE HIGHEST AND LOWEST APPEARANCE IN THE LAST FIVE YEARS?


WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		COUNT(games_played) AS total_games_appearance
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_games_appearance;




--Q4. THE COUNTRY WITH THE HIGEST AND LOWEST GAMES PLAYED?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		SUM(games_played) AS total_games_played
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_games_played ASC;





--Q5.THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES WON?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		SUM(win) AS total_win
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_win ASC;




--Q6. THE COUNTRY WITH HIGHEST AND LOWEST BGAMES LOST?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		SUM(loss) AS total_loss
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_loss ASC;




--Q7. THE COUNTRY WITH THE HIGHEST AND LOWEST GOALS FOR?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		SUM(goals_for) AS total_goals_for
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_goals_for ASC;




--Q8. THE COUNTRY WITH HIGHEST AND LOWEST GOAL AGAINST?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against
FROM
		fifa_2018
)
SELECT
        team,
		SUM(goals_against) AS total_goals_against
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_goals_against ASC;




--Q9. THE COUNTRY WITH THE HIGHEST AND LOWEST GOAL DIFFERENCE?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2018
)
SELECT
        team,
		SUM(goals_difference) AS total_goals_difference
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_goals_difference ASC;



--Q10. THE COUNTRY WITH THE HIGHEST AND LOWEST POINTS?

WITH
    all_world_cup AS(
SELECT
		'wc 2002' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2002
UNION ALL
SELECT
		'wc 2006' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2006
UNION ALL
SELECT
		'wc 2010' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2010
UNION ALL
SELECT
		'wc 2014' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2014
UNION ALL
SELECT
		'wc 2018' AS world_cup_year,
		 team,
		 points,
		 games_played,
		 win,
		 loss,
	     goals_for,
		 goals_against,
		 goals_difference
FROM
		fifa_2018
)
SELECT
        team,
		SUM(points) AS total_points
FROM
		all_world_cup
GROUP BY
       team
ORDER BY
       total_points ASC;























	    

	    

































