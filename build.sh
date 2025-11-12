#!/bin/sh

lex cat2html.l
gcc -O3 lex.cat2html.c -o bin/cat2html
rm lex.cat2html.c
strip -x bin/cat2html
chmod +x bin/cat2html
