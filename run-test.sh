#!/bin/bash

npx hardhat compile
find test -name "*.test.js" | sort | parallel -k --jobs ${JOBS_NUMBER} --results pout 'npx hardhat test {}'
python3 run_parallel.py
