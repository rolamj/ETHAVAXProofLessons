// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Challenges {

    uint public a; // Made 'a' public for visibility
    uint public b; // Made 'b' public for visibility
    mapping(address => uint) public balances; // Changed 'balance' to 'balances'

    constructor (uint _a, uint _b, uint _etherCoin) {
        a = _a;
        b = _b;
        balances[msg.sender] = _etherCoin; // Initialize the sender's balance
    }

    function subtract(uint x) public view returns(uint) {
        return a - x; // Changed to subtract 'x' from 'a'
    }

    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    // Make this function payable
    function deposit() public payable {
        balances[msg.sender] += msg.value; // Add the sent Ether to the sender's balance
    }
}

contract Challange_two {
    Challenges public challengeContract; // Reference to the Challenges contract

    constructor(address _challengeContract) {
        challengeContract = Challenges(_challengeContract); // Initialize the reference to the Challenges contract
    }

    function getBalance(address _address1) external view returns (uint) {
        // Check the balance in the Challenges contract
        return challengeContract.balances(_address1);
    }
}
