#!/bin/sh
while [ 1 ]
do
   #WAIT=$(shuf -i $1-$2 -n 1)
   #sleep $(echo "scale=4; $WAIT/1000" | bc)
   #sleep 1
   I=$(shuf -i 1-3 -n 1)
   d=`date -Iseconds`
   D=`date '+%b %d,%Y'`
   case "$I" in
      "1") echo "{$D OPTION1 ERROR An error is usually an exception that has been caught and not handled. case 1}"
      ;;
      "2") echo "{$d OPTION2 ERROR An error is usually an exception that has been caught and not handled. case 2}"
      ;;
      "3") echo "$D OPTION3 ERROR An error is usually an exception that has been caught and not handled. case 3"
      ;;
   esac
done
