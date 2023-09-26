// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract viewAndPure {
    address public owner;
    uint x;

    constructor(uint _x) {
        owner = msg.sender;
        x =_x;
    }

    function test1(uint _y) public view returns(uint) {
        return x + _y;
    }

    function test2(uint _a, uint _b) public pure returns(uint) {
        return _a + _b;
    }
}
