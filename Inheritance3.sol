pragma solidity ^0.7.6;

contract A {
    address public addr =0x0000000000000000000000000000000000000001;
    
    function getAddress() public view returns (address){
        return addr;
    }
}

contract B is A{
    //  addr = 0x0000000000000000000000000000000000000002;
}

contract C is A {
    constructor() public {
        addr = 0x0000000000000000000000000000000000000003;
    }
}





















// contract X{
//     string public name;
    
//     event Log(string message);
    
//     constructor(string memory _name) public {
//         name = _name;
        
//         emit Log(_name);
//     }
// }

// contract Y{
//     string public text;
    
//     event Log2(string message);
    
//     constructor(string memory _text) public{
//         text = _text;
        
//         emit Log2(_text);
//     }
// }

// contract E is X,Y {
//     constructor() X("X was called") Y("Y was called") public {
        
//     }
// }

// contract F is X,Y {
//     constructor() Y("Y was called") X("X was called") public {
        
//     }
// }

















// contract B is X("XB fixed input"), Y("YB another fixed length") {
    
// }

// contract C is X,Y {
//     constructor() X("XC fixed input") Y("YC another fixed length") public {
        
//     }
// }

// contract D is X,Y {
//     constructor(string memory _name, string memory _text) X(_name) Y(_text) public {
        
//     }
// }
