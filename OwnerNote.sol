// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OwnerNote {
    address public owner;
    string public note;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can do this");
        _;
    }

    function setNote(string memory newNotes) public onlyOwner {
        note = newNotes;
    }

    function changeOwner(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner cannot be empty");
        owner = newOwner;
    }
}