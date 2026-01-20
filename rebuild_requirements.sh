#!/bin/bash
cd `dirname $0`

# py-eip-structs
rm -f requirements.txt
pip-compile --strip-extras \
    --rebuild \
    --no-emit-options  \
    --index-url=http://localhost:9090 \
    --trusted-host=localhost \
    requirements.in