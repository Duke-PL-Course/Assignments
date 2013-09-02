#!/bin/bash

bunzip2 -k chronline.2013.08.27.bz2

grep 'Started GET' chronline.2013.08.27 |
sed 's/.*Started GET ".*" for \([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/' |
sort > addresses

ADDRESSES=$(cat addresses | wc -l)
DUKE_ADDRS=$(grep '152.3.' addresses | wc -l)

echo "Total Duke addresses: $DUKE_ADDRS/$ADDRESSES"
