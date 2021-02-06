#!/bin/bash
#nazwa pliku: remove_duplicates.sh
#opis: znajduje i usuwa duplikaty plikow, przy czym zachowuje jedna kopie kazdego pliku

ls -lS | awk 'BEGIN {
    getline;getline;
    name1=$8; size=$5
}
{ name2=$8;
if (size==$5)
{
    "md5sum "name1 | getline; csum1=$1;
    "md5sum "name2 | getline; csum2=$1;
    if ( csum1==csum2 )
    {print name1; print name2 }
};
size=$5; name1=name2;
}' | sort -u > duplicate_files
cat duplicate_files | xargs -l {} md5sum {} | sort | uniq -w 32 | awk '{ print "^"$2"$" }' | sort -u > duplicate_sample
echo Usuwanie...
comm duplicate_files duplicate_sample -2 -3 | tee /dev/stderr | xargs
rm
echo Z powodzeniem usunieto duplikaty plikow
