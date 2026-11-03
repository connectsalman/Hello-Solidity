// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    string public message = "Hello Web3";
    uint256 public favNumber = 7;

    function setMessage (string memory newMessage) public {
        message = newMessage;
    }
    function setNumber (uint256 newNumber) public {
        favNumber = newNumber;

    }
}