## dia-solidity

* [Introduction ](#introduction-)
* [Local Development](#local-development)
    * [Build](#build)
    * [Test](#test)
    * [Code Coverage](#code-coverage)
    * [Format](#format)
* [Smart Contracts Documentation](#smart-contracts-documentation)
* [License](#license)


## Introduction

A lightweight collection of Solidity libraries and contracts for generating random integers, unsigned integers, and deterministic shuffles — built for composability and efficiency in smart contracts.

Included Modules:

- [RandomIntX.sol](src/libraries/RandomIntX.sol) – Generates pseudo-random signed integers of various bit sizes from a uint256 seed.

- [RandomIntXInRange.sol](src/libraries/RandomIntXInRange.sol) – Generates pseudo-random signed integers within a range from a uint256 seed.

- [RandomUintX.sol](src/libraries/RandomUintX.sol) – Generates pseudo-random unsigned integers of various bit sizes from a uint256 seed.

- [RandomUintXInRange.sol](src/libraries/RandomUintXInRange.sol) – Generates pseudo-random unsigned integers within a range from a uint256 seed.

- [RandomUtils.sol](src/libraries/RandomUtils.sol) – Utility functions built on top of the SwapOrNotShuffle library for random selections.

- [SwapOrNotShuffle.sol](src/libraries/SwapOrNotShuffle.sol) – Implements the Swap-or-Not shuffle algorithm for deterministic, gas-efficient random permutations. 


Use cases:

- On-chain lotteries & games

- Random NFT traits or distributions

- Fair ordering (e.g. whitelist shuffling)

- Random number generation with deterministic inputs


## Local Development

This repository comes with a comprehensive set of tests written in Solidity, which can be executed using Foundry.

To install Foundry:

```sh
curl -L https://foundry.paradigm.xyz | bash
```

This will download foundryup. To start Foundry, run:

```sh
foundryup
```

To clone the repo:

```sh
git clone https://github.com/randa-mu/dia-solidity
```

### Build

```sh
forge build
```

### Test
To run the unit-tests and the e2e tests:
```sh
FOUNDRY_PROFILE=test forge test --gas-report
```

### Code Coverage

To run foundry coverage:
```sh
FOUNDRY_PROFILE=coverage forge coverage --report summary
```

This project also includes a [coverage.sh](dev/coverage.sh) script to generate and view test coverage reports using lcov. After the script runs, it generates and opens a html page showing lines of code covered by tests and those that have not been covered. If lcov is not installed, the script will attempt to install it automatically using Homebrew (macOS) or apt (Linux).

To make the script executable:
```sh
chmod +x dev/coverage.sh
```

To run the script:
```sh
./dev/coverage.sh
```

### Format

```sh
forge fmt
```

## Smart Contracts Documentation

```sh
forge doc --serve --port 4000
```


## License

This library is licensed under the MIT License which can be accessed [here](LICENSE).