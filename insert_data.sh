#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
i=0
cut -d ',' -f 3,4 games.csv | tail -n +2 | while IFS=',' read team1 team2
do
  echo "$i"
  ((i++))
  team=$($PSQL "SELECT name FROM teams WHERE name='$team1'")
  if [[ -z $team ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$team1')"
  fi
  team=$($PSQL "SELECT name FROM teams WHERE name='$team2'")
  if [[ -z $team ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$team2')"
  fi
done

cut -d ',' -f 1,2,3,4,5,6 games.csv | tail -n +2 | while IFS=',' read year round win_name oppo_name winner_goals opponent_goals
do
  win_id=$($PSQL "SELECT team_id FROM teams WHERE name='$win_name'")
  oppo_id=$($PSQL "SELECT team_id FROM teams WHERE name='$oppo_name'")
  echo $win_name,$win_id $oppo_name,$oppo_id
  $PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$year','$round','$win_id','$oppo_id','$winner_goals','$opponent_goals')"
done
