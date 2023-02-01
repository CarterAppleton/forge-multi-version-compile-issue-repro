// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
