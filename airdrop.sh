#!/bin/bash
# Simple script to request Solana Devnet airdrop

WALLET=$1

if [ -z "$WALLET" ]; then
  echo "Usage: ./airdrop.sh <WALLET_ADDRESS>"
  exit 1
fi

solana config set --url https://api.devnet.solana.com
solana airdrop 2 "$WALLET"
solana balance "$WALLET"
