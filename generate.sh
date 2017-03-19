#!/bin/sh

for markdown in `ls *md`; do
  htmlfile=$markdown.html
  pandoc $markdown --self-contained -c ./default.css  -s --highlight-style pygments -o $htmlfile
done
