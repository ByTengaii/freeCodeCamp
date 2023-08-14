#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

MAIN_MENU()
{
  
  #Writing messages
  if [[ $1 ]]
  then
    echo -e "\n$1"
    #MENU
    SERVICES=$($PSQL "SELECT * FROM services")
    echo -e "\n$(echo "$SERVICES")" | sed 's:|:) :; s: ::g; s:):) :'
    read SERVICE_ID_SELECTED

    ##Menu selection
    SELECTION_RESULT=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    if [[ -z $SELECTION_RESULT ]]
    then
      MAIN_MENU "I could not find that service. What would you like today?"
    else
      TAKE_APPOINTMENT $SERVICE_ID_SELECTED
    fi
  else
    echo -e "\n~~~~~ MY SALON ~~~~~"
    MAIN_MENU "Welcome to My Salon, how can I help you?"
  fi

  }

TAKE_APPOINTMENT()
{
  #Arguments
  SERVICE_ID_SELECTED=$1

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    $($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
  fi
  
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  echo -e "\nWhat time would you like your $SERVICE_NAME,$CUSTOMER_NAME?"
  read SERVICE_TIME

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  APPOINTMENT_INSERT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED,'$SERVICE_TIME')")

  echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}
MAIN_MENU