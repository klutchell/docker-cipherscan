# Container for Cipherscan

Built from [Cipherscan](https://github.com/jvehent/cipherscan) to dump data on TLS endpoints. Map your SSL terminator against [these recommendations](https://wiki.mozilla.org/Security/Server_Side_TLS).

## Running cipherscan

`docker run quay.io/redsift/cipherscan jve.linuxwall.info`

## Running analyze.py

`docker run --entrypoint=/cipherscan/analyze.py quay.io/redsift/cipherscan -t jve.linuxwall.info`
