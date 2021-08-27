#!/bin/bash

grep -i "$1 $2" $3_Dealer_schedule| awk '{print $1, $2, $5, $6}'
