pragma solidity ^0.7.6;

// contract A {
//     function getContractName() public pure returns (string memory){
//         return "Contract A";
//     }
// }

// contract B is A {
//     function getContractName(uint i) public pure returns (string memory){
//         return "contract B";
//     }
// }

contract A {
    string public name ;
    
    constructor(string memory _name) public {
        name = _name;
    }
}

//one methos
// contract B is A("contract111"){
    
// }

contract B is A {
    constructor(string memory _name) A(_name) public{
        
    }
    
}



