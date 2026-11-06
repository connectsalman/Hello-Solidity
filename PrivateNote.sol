// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Owned.sol";

contract PrivateNote is Owned {
    string public note;

    function setNote(string memory newNote) public onlyOwner {
        note = newNote;
    }
}