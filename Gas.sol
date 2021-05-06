pragma solidity ^0.8.4;

contract Gas {
    uint public gase;
    
    function testGasRefund() public returns (uint){
        gase=tx.gasprice;
        return tx.gasprice;
    }
}