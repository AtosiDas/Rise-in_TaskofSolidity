//SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;
contract Task1{
    struct Counter{
        string description;
        uint256 value;
    }
    Counter counter;
    address Owner;
    constructor(string memory _des, uint256 _value) {
        Owner = msg.sender;
        counter.value = _value;
        counter.description = _des;
    }
    modifier OnlyOwner{
        require(msg.sender == Owner,"You are not allowed!");
        _;
    }
    function Increment_counter() public OnlyOwner{
        counter.value += 1;
    }
    function Decrement_counter() public OnlyOwner{
        counter.value -= 1;
    }
    function GetValue_counter() public view returns(uint256){
        return counter.value;
    }
    function GetDescription_counter() public view returns (string memory) {
        return counter.description;
    }
}
