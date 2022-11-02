#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games;")
#  insert team winner
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
     # insert winners
      TEAM_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      OPPONENT_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      if [[ -z $TEAM_NAME ]]
      then
        INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $WINNER
        fi
      fi

      if [[ -z $OPPONENT_NAME ]]
      then
        INSERT_OPP_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_OPP_RESULT == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $OPPONENT
        fi
      fi
  fi
done

#  insert games
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
     # insert games
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,opponent_goals,winner_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$OPPONENT_GOALS,$WINNER_GOALS)")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into games, $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
      else
        continue
      fi
  fi
done
