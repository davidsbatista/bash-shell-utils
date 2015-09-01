pretty print a JSON file to stdout
==================================

   cat file.jso | python -mjson.tool



cartesian product of two files
==============================

   while read a; do while read b; do echo "$a;$b"; done < politicians_democratic.txt; done < politicians_republicans.txt
