#!/usr/bin/env bash

# exit on first error after this point to avoid redeploying with successful build
set -e

echo
echo ---------------------------------------------------------
echo "Step 1: Build the contract (may take a few seconds)"
echo ---------------------------------------------------------
echo

yarn build

echo
echo
echo ---------------------------------------------------------
echo "Step 2: Deploy the contract"
echo ---------------------------------------------------------
echo

near dev-deploy ./build/debug/src.wasm

echo
echo
echo ---------------------------------------------------------
echo "Step 3: Prepare your environment for next steps"
echo
echo "(a) Find the contract (account) name in the message above."
echo "    It will look like this: [ Account id: dev-###-### ]"
echo
echo "(b) Set an environment variable using this account name."
echo "    See example below (this may not work on Windows)."
echo
echo ---------------------------------------------------------
echo 'export CONTRACT=dev-1648309481351-57754638618310'
echo ---------------------------------------------------------
echo "↑ This 'export' command was just an example. Remember to replace the dev account ID with the one that you found higher up in the message."
echo ---------------------------------------------------------

exit 0
