#!/bin/bash

wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/wasi-sdk-12.0-linux.tar.gz
tar xvf wasi-sdk-12.0-linux.tar.gz

rm -f wasi-sdk-12.0-linux.tar.gz

mkdir _build

mv wasi-sdk-12.0 _build/wasi

rm -f install.sh

echo "Install Complete"
