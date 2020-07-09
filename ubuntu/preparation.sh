#!/bin/bash
echo "Generating 101 blocks..."
bitcoin-cli -regtest generatetoaddress 101 $(bitcoin-cli -regtest getnewaddress)
echo "Get balance"
bitcoin-cli -regtest getbalance