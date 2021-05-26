pragma solidity ^0.7.6;

contract FuncModifier{
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner,"Not Owner");
        _;
    }
    
    modifier validAddress(address _addrr) {
        require(_addrr != address(0),"Not valid address");
        _;
    }
    
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        // onlyOwner();
        // validAddress(_newOwner);
        
        owner = _newOwner;  
    }
    
    uint public x = 10;
    bool locked;
    
    modifier noReentrancy(){
        require(!locked,"locked");
        locked=true;
        _;
        locked=false;
    }
    
    function decrement(uint i) public noReentrancy {
        x -= i;
        
        if (i > 1) {
            decrement(i - 1);
        }
    }
    
    
    
}