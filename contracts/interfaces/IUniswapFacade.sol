//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.6;

interface IUniswapFacade {
    function ethRookPairInfo() external returns (uint pairTotalSupply);
}