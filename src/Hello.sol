// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;


interface IHello {
    function setNumber(uint256 _number) external;
    function getNumber() external view returns (uint256);
}