#! /bin/bash
echo -e "\n~~~~~ MY SALON ~~~~~\n"
PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"
echo -e "Welcome to MySalon, how can I help you?\n"
mapfile -t services < <($PSQL "SELECT service_id,name FROM services")
mapfile -t service_ids < <($PSQL "SELECT service_id FROM services")

# Print service_id list
print_service_list(){
  local arr=("${services[@]}") 
  for item in "${arr[@]}"
    do
      IFS="|" read service_id service_name <<< "$item"
      echo "$service_id) $service_name"
    done
}

# Check if service_id in arr, service_id is reuired
check_service_existsed(){
  local arr=("${service_ids[@]}")
  for item in "${arr[@]}"
    do
      if [[ $item -eq $1 ]]
        then
          return 0
      fi
    done
  return 1
}


print_service_list

while read SERVICE_ID_SELECTED
  do
    if check_service_existsed "$SERVICE_ID_SELECTED"
      then
        echo -e "\nWhat's your phone number?"
        read CUSTOMER_PHONE
        # Get name with phone number
        CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='${CUSTOMER_PHONE}'")
        if [[ -z "$CUSTOMER_NAME" ]]
          then 
            echo -e "\nI don't have a record for that phone number, what's your name?"
            read CUSTOMER_NAME
            $PSQL "INSERT INTO customers(name,phone) VALUES('${CUSTOMER_NAME}','${CUSTOMER_PHONE}')"
        fi
        CUSTOMER_NAME="$($PSQL "SELECT name FROM customers WHERE phone='${CUSTOMER_PHONE}'")"
        #Get appointment infomation
        service_name=$($PSQL "SELECT name From services WHERE service_id='${SERVICE_ID_SELECTED}'")
        echo -e "\nWhat time would you like your ${service_name},${CUSTOMER_NAME}"
        read SERVICE_TIME
        
        custom_id=$($PSQL "SELECT customer_id FROM customers WHERE name='${CUSTOMER_NAME}'")

        $PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES(${custom_id},${SERVICE_ID_SELECTED},'${SERVICE_TIME}')"
        echo -e "\nI have put you down for a ${service_name} at ${SERVICE_TIME}, ${CUSTOMER_NAME}."
      break
    else
        echo -e "\nI could not find that service_id. What would you like today?"
        print_service_list
    fi
  done




