// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NameBook {
    mapping (address => string) public names;

    function setMyName (string memory newName) public {
        require(bytes(newName).length > 0, "Name cannot be empty");
        names[msg.sender] = newName;
    }
}