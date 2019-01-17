# solidity-kit
Basic docker images with tools for solidity development and CI.

Currently, there are two tags:
- `latest`: solc 0.5 (native) + Ubuntu bionic + node 8 + yarn + npm + truffle 5 + git.
- `0.4.24`: solc 0.4.24 (native) + Ubuntu bionic + node 8 + yarn + npm + truffle 5 + git.

The builds are [hosted on docker hub](https://hub.docker.com/r/maxsam4/solidity-kit) and can be fetched directly from the repo `maxsam4/solidity-kit`.

To pull the docker image:
```
docker pull maxsam4/solidity-kit
```

The default tag is latest. To pull `0.4.24` use:
```
docker pull maxsam4/solidity-kit:0.4.24
```
