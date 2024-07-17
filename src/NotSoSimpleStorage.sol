// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract NotSoSimpleStorage {

    uint256 internal myFavoriteNumber = 47;
    string internal myFavoriteWord = "";

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;
    mapping(string => string) public nameToFavoriteWord;

    struct Person {
        uint256 favoriteNumber;
        string favoriteWord;
        string name;
    }

    // Person public Alex = Person({favoriteNumber: 8, name: "Alex"});
    // Person public Jp = Person({favoriteNumber: 12, name: "Jp"});

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function storeFavoriteWord(string memory _myFavoriteWord) public {
        myFavoriteWord = _myFavoriteWord;
    }

    function getFavoriteNumber() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function getFavoriteWord() public view returns(string memory) {
        return myFavoriteWord;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name, string memory _favoriteWord) public {
        listOfPeople.push(Person({favoriteNumber: _favoriteNumber, name: _name, favoriteWord: _favoriteWord}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
        nameToFavoriteWord[_name] = _favoriteWord;

    }

}