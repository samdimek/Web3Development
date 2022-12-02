//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public SimpleStorageArray;
    
    function CreateSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }
}