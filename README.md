## Huff-Math

**This repo consists of two contracts: one for storing and retrieving numbers, and the other for performing basic math operations. It also helps Huff beginners learn about it.**

## Overview

**This project is a simple demonstration of Huff, an assembly-like language for the Ethereum Virtual Machine (EVM). It includes two main contracts:**

    Store and Retrieve Contract: This contract allows you to store a number and retrieve it.

    Math Operations Contract: This contract provides basic arithmetic operations such as addition, subtraction, multiplication, division, and modulus.

The project is designed to help beginners understand Huff and how it works with calldata, memory, and the EVM stack. Despite the simplicity of the operations, working with Huff requires a deeper understanding of the Ethereum stack and low-level operations.

## Features

**Number Storage Contract:**

    `setNumber(uint256)` : Stores a number in the contract.

     `getNumber()` : Retrieves the stored number.

**Math Operations Contract:**

    `addNum(uint256, uint256)` : Adds two numbers.

    `subNum(uint256, uint256)` : Subtracts the second number from the first.

    `mulNum(uint256, uint256)` : Multiplies two numbers.

    `divNum(uint256, uint256)` : Divides the first number by the second.

    `modNum(uint256, uint256)` : Calculates the modulus of the first number with the second.


**⚠️ Note: you should install huff compiler and foundry-huff to execute this program**
