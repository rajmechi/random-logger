#!/bin/sh
while [ 1 ]
do
   #WAIT=$(shuf -i $1-$2 -n 1)
   #sleep $(echo "scale=4; $WAIT/1000" | bc)
   sleep 20
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   D=`date '+%b %d,%Y'`
   case "$I" in
      "1") echo "$D ERROR An error is usually an exception that has been caught and not handled."
      ;;
      "2") echo "$D {
  "glossary": {
    "title": "example glossary",
    "GlossDiv": {
      "title": "S",
      "GlossList": {
        "GlossEntry": {
          "ID": "SGML",
          "SortAs": "SGML",
          "GlossTerm": "Standard Generalized Markup Language",
          "Acronym": "SGML",
          "Abbrev": "ISO 8879:1986",
          "GlossDef": {
            "para": "A meta-markup language, used to create markup languages such as DocBook.",
            "GlossSeeAlso": [
              "GML",
              "XML"
            ]
          },
          "GlossSee": "markup"
        }
      }
    }
  }
}"
      ;;
      "3") echo "$D WARN A warning that should be ignored is usually at this level and should be actionable."
      ;;
      "4") echo "$D DEBUG This is a debug log that shows a log that can be ignored."
      ;;
   esac
done
