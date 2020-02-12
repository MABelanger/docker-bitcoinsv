FROM ubuntu:disco

RUN set -ex \
  && apt-get update \
  && apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gnupg2 wget \
  && rm -rf /var/lib/apt/lists/*

ENV BITCOIN_VERSION 0.1.0
ENV BITCOIN_URL https://download.bitcoinsv.io/bitcoinsv/1.0.1/bitcoin-sv-1.0.1-x86_64-linux-gnu.tar.gz
ENV BITCOIN_SHA256 8392c340b1fcc74ada9de72b16b5e026443c4b08757664b8133f447157b25a56

# install bitcoin binaries
RUN set -ex \
  && cd /tmp \
  && wget -qO bitcoin.tar.gz "$BITCOIN_URL" \
  && echo "$BITCOIN_SHA256 bitcoin.tar.gz" | sha256sum -c - \
  && tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \
  && rm -rf /tmp/*

ENTRYPOINT ["bitcoind", "-printtoconsole"]
