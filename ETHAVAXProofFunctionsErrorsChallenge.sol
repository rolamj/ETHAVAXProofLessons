// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract myContract {

    uint number;
    address admin;
    string name;

    constructor () {
        admin = msg.sender;
    }

    modifier varAdmin {
        require (admin == msg.sender, "only admin can access these functions!");
        _;
    }
    
    function willSet(uint _a, string memory _b) public varAdmin{
        number = _a;
        name = _b;
    }
    

    function getName() public view varAdmin returns(string memory) {
        return name;
    }

    function getNumber() public view varAdmin returns(uint) {
        return number;
    }
}
