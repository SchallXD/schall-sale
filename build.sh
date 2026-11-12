#!/bin/sh
# game-src/*.html は本体（アーティファクト公開用）。同じ内容を単体で開けるHTMLにして直下へ書き出す。
cd "$(dirname "$0")"
for n in mimisuma numa; do
  { printf '<!doctype html>\n<html lang="ja">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover,user-scalable=no">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style>\n</head>\n<body>\n'; cat game-src/$n.html; printf '</body>\n</html>\n'; } > $n.html
done
