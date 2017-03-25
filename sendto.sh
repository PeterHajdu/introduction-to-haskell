#!/bin/sh

recipient=$1
subject=$2
file=$3

mutt -e "set content_type=text/html" $recipient -s "$2" < $file
