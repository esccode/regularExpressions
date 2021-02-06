#!/bin/bash

# http://windows-powershell-scripts.blogspot.com/2009/06/unix-equivalents-in-powershell.html
cat test.csv | awk -F, '{print $2}'
cat test.csv | awk -F, '{total+=$1} END {print "Total: "total}'
cat test.csv | awk -F, '{print "No of fields in record "$1" = "NF}'
cat test.csv | awk -F, '{if ($NF ~ "[a-c]") print}'