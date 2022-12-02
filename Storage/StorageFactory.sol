//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public SimpleStorageArray;
    
    function CreateSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }

    function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = SimpleStorageArray[_simpleStorageIndex];
        SimpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = SimpleStorageArray[_simpleStorageIndex];
        return SimpleStorage.retrieve();
    }
}