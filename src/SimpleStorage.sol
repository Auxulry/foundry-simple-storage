// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    // boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = false;
    uint256 public favoriteNumber;
    // People public person = People({favoriteNumber: 2, name: "Jhon"});
    mapping(string => uint256) public nameToFavoriteNumber;
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // bytes favoriteBytes = "cat";

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
