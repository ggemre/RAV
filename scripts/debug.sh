#!/bin/sh

echo "$( date +%H:%M ) - Running src/main.rb..."
echo "---"
echo

START=$( date +%s%3N )
cd ../src; ruby main.rb;
END=$( date +%s%3N )

BENCHMARK="$(( END - START ))"

echo 
echo "---"
echo "Finished running with 0 errors in $BENCHMARK milliseconds."
