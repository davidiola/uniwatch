//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.6;

import './interfaces/IUniswapFacade.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol';
import '@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol';
import '@uniswap/v2-periphery/contracts/libraries/UniswapV2Library.sol';
import "hardhat/console.sol";

contract UniswapFacade is IUniswapFacade {
    address internal constant UNISWAP_ROUTER_ADDRESS = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    address internal constant UNISWAP_FACTORY_ADDRESS = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private multiDaiKovan = 0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa;

    constructor() public {
        console.log("Deploying a UniswapFacade");
    }
    function pairTotalSupplyInfo() override external view returns (uint pairTotalSupply) {
        IUniswapV2Router02 uniswapRouter = IUniswapV2Router02(UNISWAP_ROUTER_ADDRESS);
        address wethToken = uniswapRouter.WETH();
        IUniswapV2Pair pair = IUniswapV2Pair(UniswapV2Library.pairFor(UNISWAP_FACTORY_ADDRESS, wethToken, multiDaiKovan));
        pairTotalSupply = pair.totalSupply();
        console.log("TotalSupply is: '%d'", pairTotalSupply);
    }

    function getAmountsOut() override external view returns (uint[] memory amt) {
        IUniswapV2Router02 uniswapRouter = IUniswapV2Router02(UNISWAP_ROUTER_ADDRESS);
        address[] memory path = new address[](2);
        path[0] = uniswapRouter.WETH();
        path[1] = multiDaiKovan;
        amt = uniswapRouter.getAmountsOut(1000000000000000000, path);
    }
}
