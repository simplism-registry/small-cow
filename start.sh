#!/bin/bash
set -o allexport; source .release.env; set +o allexport
simplism listen \
${WASM_FILE} handle \
--http-port 8080 \
--log-level info 
