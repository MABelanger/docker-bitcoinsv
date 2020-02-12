curl https://download.bitcoinsv.io/bitcoinsv/1.0.1/bitcoin-sv-1.0.1-x86_64-linux-gnu.tar.gz --output ./data/bitcoin-sv-1.0.1-x86_64-linux-gnu.tar.gz
tar -xzf ./data/bitcoin-sv-1.0.1-x86_64-linux-gnu.tar.gz -C ./data/
./data/bitcoin-sv-1.0.1/bin/bitcoind -datadir=./data
