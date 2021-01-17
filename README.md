# Uniwatch
Uniwatch is a sample solidity program that interacts with Uniswap for token pair information.

## Usage
This project uses the [Hardhat](https://hardhat.org/) deployment system.

Compile contract: ```npx hardhat compile```

Deploy to hardhat local ETH network ```npx hardhat run scripts/sample-script.js```

Deploy to rinkeby testnet or mainnet ```npx hardhat run scripts/sample-script.js --network [rinkeby/mainnet]```

Verify contract on Etherscan ```npx hardhat verify --network rinkeby [contract address]```
