// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract EtherReceiver {
    // Event to log received Ether
    event ReceivedEther(address indexed sender, uint256 amount);

    // Event to log unrecognized calls
    event UnrecognizedCall(address indexed caller, bytes data);

    // Receive function to accept Ether
    receive() external payable {
        // Log the amount of Ether received
        emit ReceivedEther(msg.sender, msg.value);
    }

    // Fallback function to handle unrecognized calls
    fallback() external {
        // Emit an event with the caller's address and the received data
        emit UnrecognizedCall(msg.sender, msg.data);
    }
}
