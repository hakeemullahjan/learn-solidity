pragma solidity ^0.8.1;

contract Events{
    event Log(address sender,string message);
    event anotherLog();
    
    function fireEvent() public {
        emit Log(msg.sender,"Hello World!");
        emit Log(msg.sender, "Hello EVM");
        emit anotherLog();
    }
}