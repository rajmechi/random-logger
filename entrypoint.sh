#!/bin/sh
while [ 1 ]
do
   #WAIT=$(shuf -i $1-$2 -n 1)
   #sleep $(echo "scale=4; $WAIT/1000" | bc)
   sleep 1
   I=$(shuf -i 1-3 -n 1)
   d=`date -Iseconds`
   D=`date '+%b %d,%Y'`
   case "$I" in
      "1") echo "{$D OPTION1 ERROR An error is usually an exception that has been caught and not handled. \n
       line2 test \n
       line3 test  \n
       line4 test}"
      ;;
      "2") echo "{$d OPTION2 ERROR An error is usually an exception that has been caught and not handled.
       line2 test 
       line3 test 
       line4 test}"
      ;;
      "3") echo "$D OPTION3 ERROR An error is usually an exception that has been caught and not handled."
      ;;
   esac
done
