contract MyContract1 {
  uint public value;

  function setValue(uint _value) public {
    value = _value;
  }

  function getValue() public view returns (uint) {
    return value;
  }
}

contract ProxyContract {
  address public implementation;

  constructor(address _implementation) {
    implementation = _implementation;
  }

  fallback() external payable {
    address target = implementation;
    assembly {
      calldatacopy(0, 0, calldatasize())
      let result := delegatecall(gas(), target, 0, calldatasize(), 0, 0)
      returndatacopy(0, 0, returndatasize())
      switch result
      case 0 {
        revert(0, returndatasize())
      }
      default {
        return(0, returndatasize())
      }
    }
  }
}
