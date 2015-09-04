pretty print a JSON file to stdout
==================================

    cat file.json | python -mjson.tool



cartesian product of two files
==============================

    while read a; do while read b; do echo "$a;$b"; done < politicians_democratic.txt; done < politicians_republicans.txt


extract anchor links from wiki_text
==============================
    egrep -o '\[\[([A-Za-z]+\s?)+\s?(\(([A-Za-z])+\))?\|([A-Za-z]+\s?)+\]\]' wiki_text_mediawiki.txt
