// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {Test,console} from "forge-std/Test.sol";

import {IMath} from "../src/Math.sol";
contract MathTest is Test {
    IMath public math;

    function setUp() public {
        math = IMath(HuffDeployer.deploy("Math"));
        console.log("Math contract deployed at:", address(math));
    }

    function testAdd() public {
        uint256 result = math.addNum(2, 3);
        assertEq(result, 5);
        console.log("Addition result is:", result);
    }

    function testSub() public {
        uint256 result = math.subNum(5, 3);
        assertEq(result, 2);
        console.log("Subtraction result is:", result);
    }
    function testMul() public {
        uint256 result = math.mulNum(2, 3);
        assertEq(result, 6);
        console.log("Multiplication result is:", result);
    }
    function testDiv() public {
        uint256 result = math.divNum(6, 3);
        assertEq(result, 2);
        console.log("Division result is:", result);
    }
    function testMod() public {
        uint256 result = math.modNum(5, 3);
        assertEq(result, 2);
        console.log("Modulo result is:", result);
    }

}