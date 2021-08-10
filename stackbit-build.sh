#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://widget.stackbit.com/init.js 61123597e5df2200c8d119eb

echo "stackbit-build.sh: finished build"
