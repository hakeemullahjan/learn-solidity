pragma solidity ^0.8.1;


contract Loop{
    uint public count;
    
    
    function loop(uint n) public {
        for(uint i;i<n;i++){
            count +=3;
        }
    }
}

contract Dividend {
    address[100] public shareholder;
    
    function pay() public {
        for(uint i=0;i<shareholder.length;i++){
            //send eth to each shareholder
        }
    }
}