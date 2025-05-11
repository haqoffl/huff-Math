// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {Test,console} from "forge-std/Test.sol";
import {IHello} from "../src/Hello.sol";
contract helloTest is Test{
IHello public hello;
function setUp() public {
    hello = IHello(HuffDeployer.deploy("Hello"));
    console.log("Hello contract deployed at:", address(hello));
}

function testStore() public {
    hello.setNumber(53);
    uint num = hello.getNumber();
    assertEq(num, 53);
    console.log("Initial number is:", num);
}


}