#!/bin/bash
set -o allexport; source .release.env; set +o allexport
tinygo build -scheduler=none --no-debug \
-o ${WASM_FILE} \
-target wasi main.go
