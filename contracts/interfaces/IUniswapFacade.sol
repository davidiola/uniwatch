//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.6;

interface IUniswapFacade {
    function pairTotalSupplyInfo() external view returns (uint pairTotalSupply);
    function getAmountsOut() external view returns (uint[] memory amt);
}