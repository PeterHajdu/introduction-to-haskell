#!/bin/sh

for markdown in `ls *md`; do
  htmlfile=$markdown.html
  pandoc $markdown -c ./default.css  -s --highlight-style pygments -o $htmlfile
done
