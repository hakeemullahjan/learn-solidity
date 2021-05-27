pragma solidity ^0.7.6;

contract A{
    uint public x;
    uint public y;
    
    address public owner;
    uint public createdAt;
    
    constructor(uint _x,uint _y) public {
        x = _x;
        y = _y;
        
        owner = msg.sender;
        createdAt = block.timestamp;
    }
    
}