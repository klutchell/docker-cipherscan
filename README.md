# docker-cipherscan



Built from [Cipherscan](https://github.com/jvehent/cipherscan) to dump data on TLS endpoints. Map your SSL terminator against [these recommendations](https://wiki.mozilla.org/Security/Server_Side_TLS).

## Running cipherscan

`$ docker run klutchell/cipherscan jve.linuxwall.info`

## Running analyze.py

`$ docker run --entrypoint=/cipherscan/analyze.py klutchell/cipherscan -t jve.linuxwall.info`

## Score

Get your score and cert analysis at [https://www.ssllabs.com/ssltest/](https://www.ssllabs.com/ssltest/)