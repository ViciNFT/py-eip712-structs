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

echo "  === requirements.txt ==="
diff -y ../eth-brownie/requirements.txt ./requirements.txt | grep "^[a-zA-Z]" | grep "|"