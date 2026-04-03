#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read username
user_id=$($PSQL "SELECT user_id FROM users WHERE name='${username}'")

if [[ $user_id ]]
then
  game_played=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=${user_id}")
  best_game=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=${user_id}")
  echo -e "\nWelcome back, ${username}! You have played ${game_played} games, and your best game took ${best_game} guesses."
else
  echo -e "\nWelcome, ${username}! It looks like this is your first time here."
  insert_user_name=$($PSQL "INSERT INTO users(name) VALUES('${username}')")
  user_id=$($PSQL "SELECT user_id FROM users WHERE name='${username}'")
fi
  # game begin
  random_number=$(( RANDOM%1000+1 ))
  echo -e "\nGuess the secret number between 1 and 1000:"
  index=0
  
  while read guess_number
  do
    (( index++ ))
    if [[ ! $guess_number =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    # less than
    elif [[ $guess_number -lt $random_number ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    # equal
    elif [[ $guess_number -eq $random_number ]]
      then
      echo -e "\nYou guessed it in ${index} tries. The secret number was ${random_number}. Nice job!"
      insert_a_game=$($PSQL "INSERT INTO games(guesses,user_id,start_at) VALUES(${index},${user_id},NOW())")
      exit 0
    else
      echo -e "\nIt's lower than that, guess again:"
    fi
  done

