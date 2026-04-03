##! /bin/bash
# PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
# atom_info=''
# if [[ -z $1 ]]
# # Empty argument
# then
#   echo "Please provide an element as an argument."
#   exit 0
# # match atom number  
# elif [[ $1 =~ ^[0-9]+$ ]]
# then
#   atom_info=$($PSQL "SELECT * FROM properties JOIN elements USING(atomic_number) WHERE atomic_number='$1'")
#   # match atom symbol
# elif [[ $1 =~ ^[A-Z]{1,2}$ ]]
# then
#   atom_info=$($PSQL "SELECT * FROM properties JOIN elements USING(atomic_number) WHERE symbol='$1'")
#   # match atom name
# # elif [[ $1 =~ ^[A-Za-z]+$ ]]  
# else
#   atom_info=$($PSQL "SELECT * FROM properties JOIN elements USING(atomic_number) WHERE name='$1'")
# fi

# if [[ -z $atom_info ]]
# then
#   echo "I could not find that element in the database."
# else
# # get atom info
#   IFS='|' read atomic_number mass mp bp type_id symbol name <<<"$atom_info"
#   type_name=$($PSQL "SELECT type FROM types WHERE type_id=${type_id}")
#   echo "The element with atomic number ${atomic_number} is ${name} (${symbol}). It's a ${type_name}, with a mass of ${mass} amu. ${name} has a melting point of ${mp} celsius and a boiling point of ${bp} celsius."
# fi

#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

# query by input type
if [[ $1 =~ ^[0-9]+$ ]]
then
  atom_info=$($PSQL "SELECT atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id, symbol, name FROM properties JOIN elements USING(atomic_number) WHERE atomic_number=$1")
elif [[ $1 =~ ^[A-Za-z]{1,2}$ ]]
then
  atom_info=$($PSQL "SELECT atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id, symbol, name FROM properties JOIN elements USING(atomic_number) WHERE symbol='$1'")
else
  atom_info=$($PSQL "SELECT atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id, symbol, name FROM properties JOIN elements USING(atomic_number) WHERE LOWER(name)=LOWER('$1')")
fi

# not found
if [[ -z $atom_info ]]
then
  echo "I could not find that element in the database."
else
  IFS="|" read atomic_number mass mp bp type_id symbol name <<< "$atom_info"

  type_name=$($PSQL "SELECT type FROM types WHERE type_id=$type_id")

  echo "The element with atomic number $atomic_number is $name ($symbol). It's a $type_name, with a mass of $mass amu. $name has a melting point of $mp celsius and a boiling point of $bp celsius."
fi