pragma solidity ^0.8.1;


contract Mapping{
    mapping(address => uint) public myMap;
    
    function get(address _addr) public view returns (uint){
        return myMap[_addr];
    }
    
    function set(address _addr, uint i) public {
        myMap[_addr]=i;
    }
    
    function remove(address _addr) public{
        delete myMap[_addr];
    }
    
}