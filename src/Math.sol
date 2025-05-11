// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

interface IMath{
    function addNum(uint256 a, uint256 b) external pure returns (uint256);
    function subNum(uint256 a, uint256 b) external pure returns (uint256);
    function mulNum(uint256 a, uint256 b) external pure returns (uint256);
    function divNum(uint256 a, uint256 b) external pure returns (uint256);
    function modNum(uint256 a, uint256 b) external pure returns (uint256);
}