// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;


contract Hastin {
    string public name;
    address private owner;
    uint256 public number;

    constructor(){
        owner = msg.sender;
    }

    function setName(string calldata _name) external {
        name = _name;
    }

    function increment() external {
        require(msg.sender == owner,"NOT OWNER");

        number++;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}