pragma solidity ^0.7.6;

contract Base{
    function privateFunc() private pure returns (string memory){
        return "pvt func called!";
    }
    
    function testPVTFunc() public pure returns (string memory){
        privateFunc();
    }
    
    function internalFunc() internal pure returns (string memory){
        return "Internal function called!";
    }
    
    function testInternalFunc() public view returns (string memory){
        return internalFunc();
    }
    
    function externalFunc() external pure returns (string memory){
        return "external function called!";
    }
    
    function testexternalfunc() public view returns (string memory){
       return externalFunc();
    }
}

contract Child is Base {
    function testPrivateFunc() public pure returns (string memory){
     return testPVTFunc();
    }
    
    function testInternalFunc2() public pure returns (string memory){
        return internalFunc();
    }
}