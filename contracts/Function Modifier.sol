// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Property{
    uint public price;
    address public owner;

    //declaring the constructor
    constructor(){
        price = 0;
        owner = msg.sender;
    }

    /*Function modifier are used to stop the repetition of code instead of writing require owner == msg.sender 
    multiple times we can create a function modifier named onlyOwner
    */

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    function changeOwner(address _owner) public onlyOwner{
        owner = _owner;
    }

    function setPrice(uint _price) public onlyOwner{
        price = _price;
    }
}