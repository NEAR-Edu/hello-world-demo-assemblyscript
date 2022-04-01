#!/usr/bin/env bash

# exit on first error after this point to avoid redeploying with successful build
set -e

echo
echo ---------------------------------------------------------
echo "Step 0: Check for required environment variables"
echo ---------------------------------------------------------
echo

[ -z "$CONTRACT" ] && echo "Error. Missing \$CONTRACT environment variable. Please see the instructions in scripts/1.dev-deploy.sh." && exit 1
[ -z "$BENEFICIARY" ] && printf "Error. Please set the \$BENEFICIARY environment variable.\n(It is how you choose which NEAR account will receive any remaining funds when you delete the $CONTRACT contract.)\n\nDepending on your operating system, you can simply run: 'export BENEFICIARY=yournamehere.testnet' (but with your own testnet account ID)." && exit 1
[ -z "$CONTRACT" ] || echo "Found it! \$CONTRACT is set to [ $CONTRACT ]"
[ -z "$BENEFICIARY" ] || echo "Found it! \$BENEFICIARY is set to [ $BENEFICIARY ]"

echo
echo
echo ---------------------------------------------------------
echo "Step 1: Delete $CONTRACT (with $BENEFICIARY as beneficiary):"
echo ---------------------------------------------------------
echo
near delete $CONTRACT $BENEFICIARY

echo
echo ---------------------------------------------------------
echo "Step 2: Clean up project folders"
echo ---------------------------------------------------------
echo
yarn clean

exit 0
