#!/bin/sh

lex cat2html.l
gcc -O3 -arch 'x86_64' -arch 'arm64' lex.cat2html.c -o macos_bin/cat2html
rm lex.cat2html.c
strip -x macos_bin/cat2html
chmod +x macos_bin/cat2html
