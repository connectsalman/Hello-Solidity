// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TipJar {
    address public owner;

    event TipReceived(address from, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can do this");
        _;
    }

    function tip() public payable {
        require(msg.value > 0, "Send some ETH");
        emit TipReceived(msg.sender, msg.value);
    }

    function withdraw() public onlyOwner {
        uint256 amount = address(this).balance;
        (bool sent, ) = payable(owner).call{value: amount}("");
        require(sent, "Withdraw failed");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}