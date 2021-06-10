pragma solidity ^0.5.11;

contract Car{
    string public model;
    address public owner;
    
    constructor(string memory _model, address _owner) public payable{
        model = _model;
        owner = _owner;
    }   
}

contract CarFactory{
    Car[] public cars;
    
    function create(string memory _model) public{
        Car car = new Car(_model, address(this));
        cars.push(car);
    }
    
    function createAndSendEther(address _owner, string memory _model) public payable{
        Car car = (new Car).value(msg.value)(_model,_owner);
    }
}