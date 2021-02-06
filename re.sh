#!/bin/bash

# http://windows-powershell-scripts.blogspot.com/2009/06/unix-equivalents-in-powershell.html
cat ./data/test.csv | awk -F, '{print $2}'
cat ./data/test.csv | awk -F, '{total+=$1} END {print "Total: "total}'
cat ./data/test.csv | awk -F, '{print "No of fields in record "$1" = "NF}'
cat ./data/test.csv | awk -F, '{if ($NF ~ "[a-c]") print}'
echo "====================="
cat ./data/test.csv | wc
cat ./data/test.csv | grep "Tony Passaquale"
echo "====================="
time sleep 5
cat ./data/test.csv | grep -A1 "Tony Passaquale"
echo "====================="
cat ./data/test.csv | grep "y$"