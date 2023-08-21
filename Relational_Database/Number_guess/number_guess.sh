#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY()
{
    echo -e "\n~~ Number Guessing Game ~~\n"
    read -p "Enter your username: " PLAYER
    
    #TAKE player_id
    PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE player_name='$PLAYER'")
    #if don't exist
    if [[ -z $PLAYER_ID ]]
    then
        echo -e "\n Welcome, $PLAYER! It looks like this is your first time here."
        INSERT_PLAYER=$($PSQL "INSERT INTO players(player_name) VALUES('$PLAYER')")
        PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE player_name='$PLAYER'")
    else
        GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM guesses WHERE player_id=$PLAYER_ID")
        BEST_GAME=$($PSQL "SELECT MIN(guess) FROM guesses WHERE player_id=$PLAYER_ID")
        echo -e "\nWelcome back, $PLAYER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    fi
    GAME
}

GAME()
{
    
    SECRET_NUM=$(( 1 + RANDOM % 1000))
    #Counter
    TRIES=0
    #Flag
    GUESSED=0


    #Until guess the number
    echo -e "\nGuess the secret number between 1 and 1000:"
    while [[ $GUESSED -eq 0 ]]
    do
        #Take guess
        read GUESS
        # if is not number
        if [[ ! $GUESS =~ ^[0-9]+$ ]]
        then
            TRIES=$(($TRIES + 1))
            echo -e "\nThat is not an integer, guess again:"
        #if equal
        elif [[ $SECRET_NUM -eq $GUESS ]]
        then
            TRIES=$(($TRIES + 1))
            echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUM. Nice job!"
            INSERT_GUESS=$($PSQL "INSERT INTO guesses(player_id, guess) VALUES ($PLAYER_ID, $TRIES)")
            GUESSED=1
        #if greater
        elif [[ $GUESS < $SECRET_NUM ]]
        then
            TRIES=$(($TRIES + 1))
            echo -e "\nIt's higher than that, guess again:"
        #if smaller
        else
            TRIES=$(($TRIES + 1))
            echo -e "\nIt's lower than that, guess again:"
        fi
    done
    echo -e "\nThanks for playing :)\n"
}
DISPLAY