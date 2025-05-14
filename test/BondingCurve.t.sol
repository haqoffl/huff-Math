// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {Test,console} from "forge-std/Test.sol";
import {IBondingCurve} from "../src/BondingCurve.sol";
contract helloTest is Test{
IBondingCurve public curve;
function setUp() public {
    curve = IBondingCurve(HuffDeployer.deploy("BondingCurve"));
    console.log("bonding curve contract deployed at:", address(curve));
}

function testPrice() public {
    uint slope = 0.03 * 1e18;
    uint circulation = 1000;
    uint basePrice = 0.1 * 1e18;
    uint price = curve.settingPrice(slope, circulation, basePrice);
    console.log("Price is:", price);
}

function testCostOfPurchasingToken() public {
    uint gasStart = gasleft();
    console.log("Gas start:", gasStart);
    uint slope = 0.003 * 1e18;
    uint circulation = 1;
    uint purchaseToken = 1;
    uint basePrice = 0.1 * 1e18;
    uint fee = 0.0003 * 1e18;
    uint cost = curve.costOfPurchasingToken(slope, circulation, purchaseToken, basePrice,fee);
    console.log("Cost of purchasing token is:", cost);
    console.log("Gas used:", gasStart - gasleft());
}

function testCostOfSellingToken() public {
    uint slope = 0.003 * 1e18;
    uint circulation = 1;
    uint sellToken = 1;
    uint basePrice = 0.1 * 1e18;
    uint fee = 0.0003 * 1e18;
    uint cost = curve.costOfSellingToken(slope, circulation, sellToken, basePrice,fee);
    console.log("Cost of selling token is:", cost);
}
}




