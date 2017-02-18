# docker-cipherscan

Built from [cipherscan](https://github.com/mozilla/cipherscan) to dump data on TLS endpoints. Map your SSL terminator against [these recommendations](https://wiki.mozilla.org/Security/Server_Side_TLS).

## Image

[![](https://images.microbadger.com/badges/version/klutchell/cipherscan.svg)](https://microbadger.com/images/klutchell/cipherscan "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/klutchell/cipherscan.svg)](https://microbadger.com/images/klutchell/cipherscan "Get your own image badge on microbadger.com")

## Build

## Running cipherscan

`$ docker run klutchell/cipherscan jve.linuxwall.info`

## Running analyze.py

`$ docker run --entrypoint=/cipherscan/analyze.py klutchell/cipherscan -t jve.linuxwall.info`

## Score

Get your score and cert analysis at [https://www.ssllabs.com/ssltest/](https://www.ssllabs.com/ssltest/)