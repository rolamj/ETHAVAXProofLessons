// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract StorageAndMemory {
    uint256 public storageVariable; 
    uint256 public memoryVariable; 

    constructor(uint256 _initialValue) {
        storageVariable = _initialValue;
        memoryVariable = 0;
    }

    function updateStorageVariable(uint256 newValue) public {
        storageVariable = newValue;
    }

    function updateMemoryVariable(uint256 newValue) public {

        uint256 tempValue = newValue;

        memoryVariable = tempValue;
    }

    function readStorageVariable() public view returns (uint256) {
        return storageVariable;
    }

    function readMemoryVariable() public view returns (uint256) {
        return memoryVariable;
    }
}
