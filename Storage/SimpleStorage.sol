//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17; //directing the compiler to use any version of solidity above 0.8.17 which s the current working version.

contract SimpleStorage {
    uint256 public TargetNumber; // Initialization of variable TargetNumber with zero
    // bool hasTargetNumber = true;

    function store(uint256 _TargetNumber) public {
        TargetNumber = _TargetNumber; // this function stores the variable TargetNumber
    }

    function retrieve() public view returns (uint256) {
        return TargetNumber; // A view functions reads from the contract thus no gas transactions
    }
}