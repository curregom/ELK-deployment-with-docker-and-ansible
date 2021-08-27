#!/bin/bash

################################################################################################
#                                                                                              #
#               Dear reviewer if there is a better solution, please let me know  :)            #
#                                                                                              #
################################################################################################

echo -n "Enter the Hour in format 00:00:00 "
read HOUR 
echo -n "Enter the AM or PM: "
read AMPM
echo -n "Enter the date in format mmdd "
read DATE
echo -n "Enter the game BlackJack/Roulette/Texas "
read GAME

staticvalue=_Dealer_schedule

case "$GAME" in
 "BlackJack" )
grep "$HOUR $AMPM" $DATE$staticvalue| awk '{print $1, $2, $3, $4}'
 ;;
 "Roulette" )
grep "$HOUR $AMPM" $DATE$staticvalue| awk '{print $1, $2, $5, $6}'
 ;;
  "Texas" )
grep "$HOUR $AMPM" $DATE$staticvalue| awk '{print $1, $2, $7, $8}'
 ;;
esac



