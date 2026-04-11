#!/bin/bash
# crypto-verifier: проверка крипто-подписей для инвесторов
echo "🔐 Crypto-Verifier v1.0"
echo "• Key ID: ADF1345C75BF6102DFB71F03F4621630BAFF7949"
echo "• Status: $(gpg --list-keys 2>&1 | grep -c 'BAFF7949' || echo '0') keys found"
echo "• Usage: ./verify.sh <file> <signature>"
