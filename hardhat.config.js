require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */

const INFURA_PROJECT_ID = "replace";

const RINKEBY_PRIVATE_KEY = "replace";

const ETHERSCAN_API_KEY = "replace";

module.exports = {
  solidity: "0.6.6",
  etherscan: {
    apiKey: ETHERSCAN_API_KEY
  },
  networks: {
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/${INFURA_PROJECT_ID}`,
      accounts: [`0x${RINKEBY_PRIVATE_KEY}`]
    },
    mainnet: {
      url: `https://mainnet.infura.io/v3/${INFURA_PROJECT_ID}`,
      accounts: [`0x${RINKEBY_PRIVATE_KEY}`]
    }
  }
};
