// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;
interface ITokenList {
    function isTokenSupported(bytes32  market_) external view returns (bool);
    function addTokenSupport(bytes32 market_,uint256 decimals_,address tokenAddress_) external returns (bool);
    function removeTokenSupport(bytes32 market_) external returns(bool);
    function updateTokenSupport(bytes32 market_, uint256 decimals_,address tokenAddress_) external returns(bool);
    function getMarketTokenAddress(bytes32 market_) external view returns (address);
    function getMarketDecimal(bytes32 market_) external view returns (uint);
}