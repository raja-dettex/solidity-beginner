// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract VendingMachine {
    address public owner;
    mapping (address => uint) public donutBalances;

    constructor() {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    function getDonutBalances() public view returns(uint) {
        return donutBalances[address(this)];
    }

    function reStock(uint amount) public {
        require(msg.sender == owner, "only owner can restock the machine");
        donutBalances[address(this)] += amount;
    }

    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "you have to pay at least 2 ether for each donut ");
        donutBalances[address(this)] -= amount;
        donutBalances[msg.sender] += amount;
    }

}