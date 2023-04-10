#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read USERNAME

USERNAME_RESULT=$($PSQL"SELECT username FROM users WHERE username='$USERNAME'")
RANDOM_NUMBER=$(($RANDOM % 1000 + 1))
GUESS_COUNT=1
# if user doesn't exist, say welcome and add to DB
if [[ -z $USERNAME_RESULT ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  ADD_USER_RESULT=$($PSQL"INSERT INTO users (username) VALUES ('$USERNAME')")
else #user already exists, get data on user and echo welcome back statement
  USER_ID=$($PSQL"SELECT user_id FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL"SELECT guesses_taken FROM users INNER JOIN games USING(user_id) WHERE user_id='$USER_ID' ORDER BY guesses_taken LIMIT 1")
  GAMES_PLAYED=$($PSQL"SELECT COUNT (*) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#time to play the game, we have the username (USERNAME_RESULT), nothing else since it was inside the last if statement
# guess the secret number, keep that echo outside any loops.... has to show only once in the beginning of the game only
echo "Guess the secret number between 1 and 1000:"
read GUESS
# need to start the while loop
while true; do
  #check to make sure it's an integer
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    # it's a integer, is it too high
    if [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      GUESS_COUNT=$(( $GUESS_COUNT+1 ))
      read GUESS
    else 
      if [[ $GUESS -lt $RANDOM_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        GUESS_COUNT=$(( $GUESS_COUNT+1 ))
        read GUESS
    else
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
      USER_ID=$($PSQL"SELECT user_id FROM users WHERE username='$USERNAME'")
      FINISHED_GAME_RESULT=$($PSQL"INSERT INTO games(user_id, guesses_taken) VALUES($USER_ID, $GUESS_COUNT)")
      break
    fi
  fi
  else
    echo "That is not an integer, guess again:"
    read GUESS
  fi
done
