pragma solidity ^0.8.4;

contract ViewAndPure{
    uint public x=1;
    
    function addToX(uint y) public view returns (uint){
        return x+y;
    }
    
    // function updateX() public view {
    //     x +=1;
    // }
    
    // function foo() public view {
    // }
    
    // function invalidViewFunc() public view {
    //     foo();
    // }
    
    function add(uint i, uint j) public pure returns (uint) {
        return i+j;
    }
    
    function foo() pure  public {
        
    }
    
    function invalidPureFunc() public pure {
        foo();
    }
    
    
}