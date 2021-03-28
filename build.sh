#!/bin/bash

_build/wasi/bin/clang --sysroot=_build/wasi/share/wasi-sysroot --target=wasm32 -O3 --no-standard-libraries -Wl,--export-dynamic -Wl,--no-entry -o index.wasm src/index.c

cp src/template/index_template.html out/index.html

echo '<div id="w" style="display: none;">' >> temp_
base64 index.wasm >> temp_
echo '</div><script>' >> temp_
cat src/template/index_template.js >> temp_
echo '</script>' >> temp_

sed -i -e '/{_LOGIC_}/{r temp_' -e 'd}' out/index.html

rm -f temp_
rm -f index.wasm

echo "Built out/index.html"
