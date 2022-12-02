//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17; //directing the compiler to use any version of solidity above 0.8.17 which s the current working version.

contract SimpleStorage {
    uint256 public TargetNumber; // Initialization of variable TargetNumber with zero
    // bool hasTargetNumber = true;

    //People public person = People({TargetNumber: 25000, name: "Gray"}); // creating a new person with their target number in the People struct

    People[] public people; //creating a dynamic people array 

    mapping (string => uint256) NameToTargetNumber;

    // a struct object that holds a person's name and their target number
    struct People {
        uint256 TargetNumber;
        string name;
    }

    function store(uint256 _TargetNumber) public {
        TargetNumber = _TargetNumber; // this function stores the variable TargetNumber
    }

    function retrieve() public view returns (uint256) {
        return TargetNumber; // A view functions reads from the contract thus no gas transactions
    }

    function addPerson(string memory _name, uint256 _TargetNumber) public {
        people.push(People(_TargetNumber, _name));
        NameToTargetNumber[_name] = _TargetNumber;
    }
}