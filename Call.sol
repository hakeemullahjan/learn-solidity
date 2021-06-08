pragma solidity ^0.5.11;


contract Reciever{
    event Recieved(address caller, uint amount, string message);
    
    function() external payable{
        emit Recieved(msg.sender, msg.value, "Fallback was called");
    }
    
    function foo(string memory message, uint x) public payable returns (uint){
        emit Recieved(msg.sender, msg.value, message);
        
        return x+1;
    }
}

contract Caller{
    event Response(bool success, bytes data);
    
    function testCallFoo(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call.value(msg.value).gas(5000)(abi.encodeWithSignature("foo(string,uint256)", "call foo",18));
        emit Response(success, data);
    }
    
     function testCallFooNeverExist(address _addr) public {
        (bool success, bytes memory data) = _addr.call(abi.encodeWithSignature("doesNotExist()"));
        emit Response(success, data);
    }
    
}