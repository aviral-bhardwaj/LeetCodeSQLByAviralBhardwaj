/*
511-Game-Play-Analysis-I-LeetCode.sql

Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.

Write a solution to find the first login date for each player.

Return the result table in any order.

The result format is in the following example.


Example 1:

Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+






*/


select player_id, MIN(event_date) as first_login from activity 
group by Player_id



/*

Approach to Solve
To solve this problem, we need to follow these steps:
Group the data by player_id: Since we want to find the first login date for each player, we need to group all the records for each player together.
Find the earliest date for each player: Within each group of player records, we need to identify the earliest event_date. This will be the first login date for that player.
Select the required columns: The output should contain only the player_id and their corresponding first login date.
Key Concepts
To implement this solution, you would need to understand and use the following database concepts:
GROUP BY: This clause is used to group rows that have the same values in specified columns.
Aggregate Functions: Specifically, you would use the MIN() function to find the earliest date within each group.
SELECT: To choose only the required columns (player_id and the calculated first login date) for the output.
Example Walkthrough
Let's walk through the example provided:
For player_id 1, we have two records:
2016-03-01
2016-05-02
The earlier date (2016-03-01) is selected as the first login.
For player_id 2, we only have one record (2017-06-25), so this becomes the first login date.
For player_id 3, we have two records:
2016-03-02
2018-07-03
The earlier date (2016-03-02) is selected as the first login.
The final output correctly shows the earliest login date for each player.


*/
